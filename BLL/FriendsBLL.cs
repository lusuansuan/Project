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
        /// 获取和好友的聊天记录-分页
        /// </summary>
        /// <param name="UserId">当前用户Id</param>
        /// <param name="FriendId">好友用户Id</param>
        /// <param name="Page">页码索引</param>
        /// <param name="PageSize">每页记录数</param>
        /// <returns></returns>
        public object Friend_GetFriendsChatList_ForPage(Guid UserId, Guid FriendId, int Page, int PageSize)
        {
            DataSet ds = oFriendsDAL.Friend_GetFriendsChatList_ForPage(UserId, FriendId, Page, PageSize);
            return Common.JsonHelper.ToJson_L(ds, 1, 10, true);
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


    }
}
