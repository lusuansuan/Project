using BLL;
using Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Newtonsoft.Json;

namespace Mylife.Controllers
{
    public class FriendsController :BaseController
    {

        FriendsBLL oFriendsBLL = new FriendsBLL();


        /// <summary>
        /// 获取和单个好友的聊天记录-分页
        /// </summary>
        /// <param name="FriendId">好友用户Id</param>
        /// <param name="Page">页码索引</param>
        /// <param name="PageSize">每页记录数</param>
        public void Friend_GetFriendsChatList_ForPage(string FriendId, int Page, int PageSize)
        {
            var obj = oFriendsBLL.Friend_GetFriendsChatList_ForPage(GetUserInfo().Id, Guid.Parse(FriendId),Page,PageSize);
            JsonResponse(obj.ToString());
        }

        /// <summary>
        /// 查询用户
        /// </summary>
        /// <param name="SeachKey">查询关键词</param>
        public JsonResult Friend_SeachUserInfoList(string SeachKey)
        {
            try
            {
                var obj = oFriendsBLL.Friend_SeachUserInfoList(GetUserInfo().Id, SeachKey);
                List<SessionUserInfo> models = Common.CacheHelper<List<SessionUserInfo>>.GetCache("OnLineUsers");
                ReturnModel<List<SeachUserInfo>> remodel = JsonConvert.DeserializeObject<ReturnModel<List<SeachUserInfo>>>(obj.ToString());
                foreach (SeachUserInfo model in remodel.Data)
                {
                    model.IsOnline = 0;
                    if (models != null && models.Count(x => x.Id == model.Id) > 0)
                    {
                        model.IsOnline = 1;
                    }
                }
                return Json(remodel);
            }
            catch (Exception ex)
            {
                return Json(ex);
            }
        }


        /// <summary>
        /// 获取最近聊天记录-最新50条
        /// </summary>
        /// <returns></returns>
        public JsonResult Friend_GetFriendsNewsList()
        {
            var obj = oFriendsBLL.Friend_GetFriendsNewsList(GetUserInfo().Id);
            List<SessionUserInfo> models = Common.CacheHelper<List<SessionUserInfo>>.GetCache("OnLineUsers");
            ReturnModel<List<ChatUserInfo>> remodel = JsonConvert.DeserializeObject<ReturnModel<List<ChatUserInfo>>>(obj.ToString());
            foreach (ChatUserInfo model in remodel.Data)
            {
                model.IsOnline = 0;
                if (models != null && models.Count(x => x.Id == model.FriendId) > 0)
                {
                    model.IsOnline = 1;
                }
            }
            return Json(remodel);
        }

        /// <summary>
        /// 获取好友列表
        /// </summary>
        /// <returns></returns>
        public JsonResult Friend_GetFriendsList()
        {
            var obj = oFriendsBLL.Friend_GetFriendsList(GetUserInfo().Id);
            List<SessionUserInfo> models = Common.CacheHelper<List<SessionUserInfo>>.GetCache("OnLineUsers");
            ReturnModel<List<ChatUserInfo>> remodel = JsonConvert.DeserializeObject<ReturnModel<List<ChatUserInfo>>>(obj.ToString());
            foreach (ChatUserInfo model in remodel.Data)
            {
                model.IsOnline = 0;
                if (models != null && models.Count(x => x.Id == model.FriendId) > 0)
                {
                    model.IsOnline = 1;
                }
            }
            return Json(remodel);
        }


        /// <summary>
        /// 添加好友申请
        /// </summary>
        /// <param name="strmodel"></param>
        public void Friend_AddFriendsApply(string strmodel)
        {
            Friends_Apply model = JsonConvert.DeserializeObject<Friends_Apply>(strmodel);
            model.Id = Guid.NewGuid();
            model.ApplyerId = GetUserInfo().Id;
            var obj = oFriendsBLL.Friend_AddFriendsApply(model);
            JsonResponse(obj.ToString());
        }


        /// <summary>
        /// 获取好友申请列表
        /// </summary>
        public void Friend_GetFriendsApplyList()
        {
            var obj = oFriendsBLL.Friend_GetFriendsApplyList(GetUserInfo().Id);
            JsonResponse(obj.ToString());
        }


        /// <summary>
        /// 审核好友申请
        /// </summary>
        /// <param name="Id">好友申请主键Id</param>
        /// <param name="State">审核状态:-1删除,0拒绝，1同意</param>
        public void Friend_AuditFriendsApply(string Id, int State)
        {
            var obj = oFriendsBLL.Friend_AuditFriendsApply(Guid.Parse(Id), State);
            JsonResponse(obj.ToString());
        }

        /// <summary>
        /// 获取未读好友申请个数
        /// </summary>
        public void Friend_GetUnReadFriendsApplyCount()
        {
            var obj = oFriendsBLL.Friend_GetUnReadFriendsApplyCount(GetUserInfo().Id);
            JsonResponse(obj.ToString());
        }


	}
}