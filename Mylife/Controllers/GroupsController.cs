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
    public class GroupsController : BaseController
    {

        GroupsBLL oGroupsBLL = new GroupsBLL();


        /// <summary>
        /// 获取我的群列表
        /// </summary>
        /// <returns></returns>
        public void Group_GetGroupsList()
        {
            var obj = oGroupsBLL.Group_GetGroupsList(GetUserInfo().Id);
            JsonResponse(obj.ToString());
        }


        /// <summary>
        /// 获取群成员列表
        /// </summary>
        /// <returns></returns>
        public JsonResult Group_GetGroupMemberList(string GroupId)
        {
            var obj = oGroupsBLL.Group_GetGroupMemberList(Guid.Parse(GroupId), GetUserInfo().Id);
            List<SessionUserInfo> models = Common.CacheHelper<List<SessionUserInfo>>.GetCache("OnLineUsers");
            ReturnModel<List<GroupUserInfoList>> remodel = JsonConvert.DeserializeObject<ReturnModel<List<GroupUserInfoList>>>(obj.ToString());
            foreach (GroupUserInfoList model in remodel.Data)
            {
                model.IsOnline = 0;
                if (models.Count(x => x.Id == model.FriendId) > 0)
                {
                    model.IsOnline = 1;
                }
            }
            return Json(remodel);
        }


        /// <summary>
        /// 获取和单个好友的聊天记录-分页
        /// </summary>
        /// <param name="FriendId">好友用户Id</param>
        /// <param name="Page">页码索引</param>
        /// <param name="PageSize">每页记录数</param>
        public void Friend_GetGroupChatList_ForPage(string GroupId, int Page, int PageSize)
        {
            var obj = oGroupsBLL.Friend_GetGroupChatList_ForPage(GetUserInfo().Id,Guid.Parse(GroupId), Page, PageSize);
            JsonResponse(obj.ToString());
        }



	}
}