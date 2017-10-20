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

        //群在线人员集合
        public static List<Friends_ChatGroup> GroupOnLineUsers = new List<Friends_ChatGroup>();
       
        //业务逻辑层
        SessionUserInfo UserInfo = new SessionUserInfo();
        FriendsBLL oFriendsBLL = new FriendsBLL();
        GroupsBLL oGroupsBLL = new GroupsBLL();


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
            UserInfo = GetSignalrUserInfo();
            //获取所有的群
            var GroupsObj = oGroupsBLL.Group_GetAllGroupsList();
            ReturnModel<List<Friends_ChatGroup>> Groups = JsonConvert.DeserializeObject<ReturnModel<List<Friends_ChatGroup>>>(GroupsObj.ToString());
            //遍历群判断是否存在在线群里
            foreach (Friends_ChatGroup Group in Groups.Data)
            {
                if(GroupOnLineUsers.Count(x => x.GroupId == Group.GroupId) == 0)
                {
                    GroupOnLineUsers.Add(Group);
                }
            }

            var MyGroupObj = oGroupsBLL.Group_GetGroupsList(UserInfo.Id);
            ReturnModel<List<Friends_GroupList>> MyGroups = JsonConvert.DeserializeObject<ReturnModel<List<Friends_GroupList>>>(MyGroupObj.ToString());

            //把我加入到存在我的在线群成员里
            foreach (Friends_GroupList MyGroup in MyGroups.Data)
            {
                if (GroupOnLineUsers.First(p => p.GroupId == MyGroup.Id).GroupOnLineUserInfos != null)
                {
                    if (GroupOnLineUsers.First(p => p.GroupId == MyGroup.Id).GroupOnLineUserInfos.Count(x => x.UserId == UserInfo.Id) == 0)
                    {
                        GroupOnLineUsers.First(p => p.GroupId == MyGroup.Id).GroupOnLineUserInfos.Add(new GroupOnLineUserInfo() { UserId = UserInfo.Id });
                    }
                }
                else
                {
                    List<GroupOnLineUserInfo> GroupOnLineUserInfos = new List<GroupOnLineUserInfo>();
                    GroupOnLineUserInfos.Add(new GroupOnLineUserInfo { UserId = UserInfo.Id });
                    GroupOnLineUsers.First(p => p.GroupId == MyGroup.Id).GroupOnLineUserInfos = GroupOnLineUserInfos;
                }
            }

            //如果不存在
            if (OnLineUsers.Count(x => x.Id == UserInfo.Id) == 0)
            {
                //添加在线人员
                OnLineUsers.Add(UserInfo);
                //把在线人员添加到缓存
                Common.CacheHelper<List<SessionUserInfo>>.Insert("OnLineUsers", OnLineUsers);

                //获取好友列表
                var obj = oFriendsBLL.Friend_GetFriendsNewsList(UserInfo.Id);
                ReturnModel<List<ChatUserInfo>> models = JsonConvert.DeserializeObject<ReturnModel<List<ChatUserInfo>>>(obj.ToString());
                var result = new { UserId = UserInfo.Id, Msg = "您的好友 " + UserInfo.UserName + " 上线了" };
                foreach (ChatUserInfo model in models.Data)
                {
                    //标记上线的好友并加入我的在线好友集合
                    if (OnLineUsers.Count(x => x.Id == model.FriendId) > 0)
                    {
                        model.IsOnline = 1;
                        Clients.User(model.FriendId.ToString()).onLineTips(result);                      
                    }                  
                }
                //发送好友列表数据信息给自己
                Clients.Caller.getFriendsNewsList(models);            
            }
        }


        /// <summary>
        /// 发送信息给特定人
        /// </summary>
        /// <param name="ToId">接收人ID</param>
        /// <param name="message">信息</param>
        public void sendMessage(string strmodel)
        {
            UserInfo = GetSignalrUserInfo();
            Friends_Chat model = JsonConvert.DeserializeObject<Friends_Chat>(strmodel);
            model.Id = Guid.NewGuid();
            model.SenderId = UserInfo.Id;
            ReturnModel remodel = JsonConvert.DeserializeObject<ReturnModel>(oFriendsBLL.Friend_AddFriendsChatList(model).ToString());
            if (remodel.Code == 1)
            {
                var obj = new { Code = 1, Msg = "发送成功", FriendId = model.OwnerId, SenderId = model.SenderId, SendType = model.SendType, SendContent = model.SendContent, ReceiverHeadPic = UserInfo.HeadPicture, ReceiverName = UserInfo.UserName, UpdateTime = DateTime.Now.ToLongTimeString() };
                Clients.User(model.OwnerId.ToString()).sendMessage(obj);
                Clients.Caller.sendMsgTips(obj);
            }
            else
            {
                var obj = new { Code = 0, Msg = "发送失败" };
                Clients.Caller.sendMsgTips(obj);
            }
        }


        /// <summary>
        /// 发送群消息
        /// </summary>
        /// <param name="ToId">接收人ID</param>
        /// <param name="message">信息</param>
        public void sendGroupMessage(string strmodel)
        {
            UserInfo = GetSignalrUserInfo();
            Friends_GroupChat model = JsonConvert.DeserializeObject<Friends_GroupChat>(strmodel);
            model.Id = Guid.NewGuid();
            model.SenderId = UserInfo.Id;
            ReturnModel remodel = JsonConvert.DeserializeObject<ReturnModel>(oGroupsBLL.Friend_AddGroupsChat(model).ToString());
            if (remodel.Code == 1)
            {
                var obj = new { Code = 1, Msg = "发送成功", GroupId = model.GroupId, SenderId = model.SenderId, SendType = model.SendType, SendContent = model.SendContent, SenderHeadPic = UserInfo.HeadPicture, SenderName = UserInfo.UserName, UpdateTime = DateTime.Now.ToLongTimeString() };
                Clients.Group(model.GroupId.ToString()).sendGroupMessage(obj);
            }
            else
            {
                var obj = new { Code = 0, Msg = "发送失败" };
                Clients.Caller.sendMsgTips(obj);
            }
        }








        /// <summary>
        /// 添加好友申请
        /// </summary>
        /// <param name="strmodel"></param>
        public void addFriendsApply(string strmodel)
        {
            Friends_Apply model = JsonConvert.DeserializeObject<Friends_Apply>(strmodel);
            model.Id = Guid.NewGuid();
            model.ApplyerId = GetSignalrUserInfo().Id;
            var obj = oFriendsBLL.Friend_AddFriendsApply(model);
            ReturnModel remodel = JsonConvert.DeserializeObject<ReturnModel>(obj.ToString());
            if (remodel.Code == 1)
            {
                Clients.User(model.OwnerId.ToString()).applyTipsToFriend(remodel);                
            }
            Clients.Caller.applyTips(remodel);
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

    }

}