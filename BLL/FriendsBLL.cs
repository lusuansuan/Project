using DAL;
using Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace BLL
{
    public class FriendsBLL
    {

        FriendsDAL oFriendsDAL = new FriendsDAL();

        /// <summary>
        /// 获取好友列表
        /// </summary>
        /// <param name="UserId">当前用户Id</param>
        /// <returns></returns>
        public object Friend_GetFriendsList(Guid UserId)
        {
            DataSet ds = oFriendsDAL.Friend_GetFriendsList(UserId);
            return Common.JsonHelper.ToJson_L(ds,0,0,false);
        }


        /// <summary>
        /// 获取和单个好友的聊天记录-分页
        /// </summary>
        /// <param name="UserId">当前用户Id</param>
        /// <param name="FriendId">好友用户Id</param>
        /// <param name="Page">页码索引</param>
        /// <param name="PageSize">每页记录数</param>
        /// <returns></returns>
        public object Friend_GetFriendsChatList_ForPage(Guid UserId, Guid FriendId, int Page, int PageSize)
        {
            DataSet ds = oFriendsDAL.Friend_GetFriendsChatList_ForPage(UserId, FriendId, Page, PageSize);
            return Common.JsonHelper.ToJson_L(ds, Page, PageSize, true);
        }


        /// <summary>
        /// 添加聊天记录
        /// </summary>
        /// <param name="model">聊天实体</param>
        /// <returns></returns>
        public object Friend_AddFriendsChatList(Friends_Chat model)
        {
            DataSet ds = oFriendsDAL.Friend_AddFriendsChatList(model);
            return Common.JsonHelper.ToJson_L(ds);
        }


        /// <summary>
        /// 查询用户
        /// </summary>
        /// <param name="UserId">当前用户Id</param>
        /// <param name="SeachKey">查询关键字</param>
        /// <returns></returns>
        public object Friend_SeachUserInfoList(Guid UserId, string SeachKey)
        {
            DataSet ds = oFriendsDAL.Friend_SeachUserInfoList(UserId, SeachKey);
            return Common.JsonHelper.ToJson_L(ds, 0, 0, false);
        }


        /// <summary>
        /// 添加好友申请
        /// </summary>
        /// <param name="model">好友申请信息实体</param>
        /// <returns></returns>
        public object Friend_AddFriendsApply(Friends_Apply model)
        {
            DataSet ds = oFriendsDAL.Friend_AddFriendsApply(model);
            return Common.JsonHelper.ToJson_L(ds);
        }



        /// <summary>
        /// 获取好友申请列表
        /// </summary>
        /// <param name="UserId">当前用户Id</param>
        /// <returns></returns>
        public object Friend_GetFriendsApplyList(Guid UserId)
        {
            DataSet ds = oFriendsDAL.Friend_GetFriendsApplyList(UserId);
            return Common.JsonHelper.ToJson_L(ds,0,0,false);
        }


        /// <summary>
        /// 审核好友申请
        /// </summary>
        /// <param name="Id">好友申请主键Id</param>
        /// <param name="State">审核状态:-1删除,0拒绝，1同意</param>
        /// <returns></returns>
        public object Friend_AuditFriendsApply(Guid Id, Int32 State)
        {
            DataSet ds = oFriendsDAL.Friend_AuditFriendsApply(Id, State);
            return Common.JsonHelper.ToJson_L(ds);
        }

        /// <summary>
        /// 获取未读好友申请个数
        /// </summary>
        /// <param name="UserId">当前用户Id</param>
        /// <returns></returns>
        public object Friend_GetUnReadFriendsApplyCount(Guid UserId)
        {
            DataSet ds = oFriendsDAL.Friend_GetUnReadFriendsApplyCount(UserId);
            return Common.JsonHelper.ToJson_L(ds);
        }


        /// <summary>
        /// 获取最近聊天记录-最新50条
        /// </summary>
        /// <param name="UserId">当前用户Id</param>
        /// <returns></returns>
        public object Friend_GetFriendsNewsList(Guid UserId)
        {
            DataSet ds = oFriendsDAL.Friend_GetFriendsNewsList(UserId);
            return Common.JsonHelper.ToJson_L(ds,0,0,false);
        }




    }
}
