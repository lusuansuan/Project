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
    public class GroupsBLL
    {

        GroupsDAL oGroupsDAL = new GroupsDAL();

        /// <summary>
        /// 获取我的群列表
        /// </summary>
        /// <param name="UserId">当前用户Id</param>
        /// <returns></returns>
        public object Group_GetGroupsList(Guid UserId)
        {
            DataSet ds = oGroupsDAL.Group_GetGroupsList(UserId);
            return Common.JsonHelper.ToJson_L(ds, 0, 0, false);
        }


        /// <summary>
        /// 获取所有群列表
        /// </summary>
        /// <returns></returns>
        public object Group_GetAllGroupsList()
        {
            DataSet ds = oGroupsDAL.Group_GetAllGroupsList();
            return Common.JsonHelper.ToJson_L(ds, 0, 0, false);
        }


        /// <summary>
        /// 获取群成员列表
        /// </summary>
        /// <returns></returns>
        public object Group_GetGroupMemberList(Guid GroupId, Guid UserId)
        {
            DataSet ds = oGroupsDAL.Group_GetGroupMemberList(GroupId, UserId);
            return Common.JsonHelper.ToJson_L(ds, 0, 0, false);
        }


        /// <summary>
        /// 添加聊天记录
        /// </summary>
        /// <param name="model">聊天实体</param>
        /// <returns></returns>
        public object Friend_AddGroupsChat(Friends_GroupChat model)
        {
            DataSet ds = oGroupsDAL.Friend_AddGroupsChat(model);
            return Common.JsonHelper.ToJson_L(ds);
        }


        /// <summary>
        /// 获取群聊天记录-分页
        /// </summary>
        /// <param name="UserId">当前用户Id</param>
        /// <param name="FriendId">群Id</param>
        /// <param name="Page">页码索引</param>
        /// <param name="PageSize">每页记录数</param>
        /// <returns></returns>
        public object Friend_GetGroupChatList_ForPage(Guid UserId, Guid GroupId, int Page, int PageSize)
        {
            DataSet ds = oGroupsDAL.Friend_GetGroupChatList_ForPage(UserId, GroupId, Page, PageSize);
            return Common.JsonHelper.ToJson_L(ds, Page, PageSize, true);
        }



    }
}
