using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Microsoft.AspNet.SignalR;
using Microsoft.AspNet.SignalR.Hubs;
using System.Web.Mvc;
using Model;
using System.Threading.Tasks;
using Newtonsoft.Json;
using BLL;

namespace SignalRMVC.SignalR
{

    [HubName("ConHub")]
    public class MyHub : Hub
    {

        //在线用户集合
        public static List<SessionUserInfo> OnLineUsers = new List<SessionUserInfo>();

        //群组
        public static List<Rooms> Rooms = new List<Rooms>(); 

        SessionUserInfo UserInfo = new SessionUserInfo();
        FriendsBLL oFriendsBLL = new FriendsBLL();

        /// <summary>
        /// 获取连接ID,你可以写成自己的扩展方法,或设置成属性,自行定义
        /// </summary>
        /// <returns></returns>
        public SessionUserInfo GetSignalrUserInfo()
        {
            if (Context.Request.GetHttpContext().Request.Cookies["UserInfo"] != null)
            {
                return JsonConvert.DeserializeObject<SessionUserInfo>(Context.Request.GetHttpContext().Request.Cookies["UserInfo"].Value);
            }
            else
            {
                return null;
                //获取不到当前用户信息/最好跳回登陆页
            }
        }


        /// <summary>
        /// 登录连线
        /// </summary>
        public void connect()
        {
            //如果不存在
            if (OnLineUsers.Count(x => x.Id == GetSignalrUserInfo().Id) == 0)
            {
                //添加在线人员
                OnLineUsers.Add(GetSignalrUserInfo());

                //获取好友列表
                var obj = oFriendsBLL.Friend_GetFriendsList(GetSignalrUserInfo().Id);
                ReturnModel<List<ChatUserInfo>> models = JsonConvert.DeserializeObject<ReturnModel<List<ChatUserInfo>>>(obj.ToString());
                foreach (ChatUserInfo model in models.Data)
                {
                    //标记上线的好友并加入我的在线好友集合
                    if (OnLineUsers.Count(x => x.Id == model.FriendId) > 0)
                    {
                        model.IsOnline = 1;
                        Clients.User(model.FriendId.ToString()).onLineTips("您的好友 " + GetSignalrUserInfo().UserName + " 上线了");
                        //Groups.Add(model.FriendId.ToString(), GetSignalrUserInfo().Account+"的在线好友");                        
                    }                  
                }
                //发送好友列表数据信息给自己
                Clients.Caller.getFriendsList(models);
                ////提示好友自己上线
                //Clients.Group(GetSignalrUserInfo().Account + "的在线好友").onLineTips("您的好友 " + GetSignalrUserInfo().UserName + " 上线了");               
            }
        }


        /// <summary>
        /// 发送信息给特定人
        /// </summary>
        /// <param name="ToId">接收人ID</param>
        /// <param name="message">信息</param>
        public void sendMessage(string ToId, string message)
        {
            UserInfo = GetSignalrUserInfo();
            message = HttpUtility.HtmlEncode(message);
            string UserID = UserInfo.Id.ToString();
            string fromName = UserInfo.Account;
            Clients.User(ToId).sendMessage(message);
        }

        /// <summary>
        /// 离线
        /// </summary>
        public override System.Threading.Tasks.Task OnDisconnected(bool stopCalled)
        {
            UserInfo = GetSignalrUserInfo();
            var item = OnLineUsers.FirstOrDefault(x => x.Id == UserInfo.Id);
            if (item != null)
            {
                //Clients.All.onUserDisconnected(item.Id, item.UserName); //调用客户端用户离线通知
                OnLineUsers.Remove(item);
            }
            return base.OnDisconnected(stopCalled);
        }



        //#region 模板一

        ////声明静态变量存储当前在线用户
        //public static class UserHandler
        //{
        //    public static Dictionary<string, string> ConnectedIds = new Dictionary<string, string>();

        //}

        //SessionModel UserInfo = new SessionModel();

        ///// <summary>
        ///// 获取连接ID,你可以写成自己的扩展方法,或设置成属性,自行定义
        ///// </summary>
        ///// <returns></returns>
        //public SessionModel GetSignalrUserInfo()
        //{
        //    if (Context.Request.GetHttpContext().Request.Cookies["UserInfo"] != null)
        //    {
        //        return JsonConvert.DeserializeObject<SessionModel>(Context.Request.GetHttpContext().Request.Cookies["UserInfo"].Value);
        //    }
        //    else
        //    {
        //        return null;
        //        //获取不到当前用户信息/最好跳回登陆页
        //    }
        //}


        ////用户进入页面时执行的（连接操作）
        //public void userConnected()
        //{
        //    UserInfo = GetSignalrUserInfo();
        //    //获取当前用户ID
        //    string UserID = UserInfo.UserID.ToString();
        //    //获取当前用户名字
        //    string Name = UserInfo.Account;
        //    //新增目前使用者上线清单
        //    UserHandler.ConnectedIds.Add(UserID, Name);
        //    //发送信息给自己，并显示上线清单
        //    Clients.Caller.getList(UserHandler.ConnectedIds.Select(p => new { id = p.Key, name = p.Value }).ToList());
        //    //发送信息给其他人提示自己上线了
        //    Clients.Others.addList(UserID, Name);
        //}



        ///// <summary>
        ///// 发送信息给所有人
        ///// </summary>
        ///// <param name="message">信息</param>
        //public void sendAllMessage(string message)
        //{
        //    UserInfo = GetSignalrUserInfo();
        //    //进行编码，防止XSS攻击
        //    message = HttpUtility.HtmlEncode(message);
        //    //获取当前用户ID
        //    string UserID = UserInfo.UserID.ToString();
        //    //查找UserID 在在线用户集合里对应的名字 //也可以用获取当前用户名字来获取
        //    var name = UserHandler.ConnectedIds.Where(p => p.Key == UserID).FirstOrDefault().Value;
        //    message = name + "：" + message;
        //    //调用客户端方法
        //    Clients.All.sendAllMessge(message);
        //}


        ///// <summary>
        ///// 发送信息给特定人
        ///// </summary>
        ///// <param name="ToId">接收人ID</param>
        ///// <param name="message">信息</param>
        //public void sendMessage(string ToId, string message)
        //{
        //    UserInfo = GetSignalrUserInfo();
        //    message = HttpUtility.HtmlEncode(message);
        //    string UserID = UserInfo.UserID.ToString();
        //    string fromName = UserInfo.Account;
        //    message = fromName + " ：" + message;
        //    Clients.User(ToId).sendMessage(message);
        //}


        ////当使用者断线时执行
        //public override Task OnDisconnected(bool bol)
        //{
        //    UserInfo = GetSignalrUserInfo();
        //    //当使用者离开时，移除在清单内的ConnectionId
        //    Clients.All.removeList(UserInfo.UserID.ToString());
        //    UserHandler.ConnectedIds.Remove(UserInfo.UserID.ToString());
        //    return base.OnDisconnected(bol);
        //} 
        //#endregion





    }

}