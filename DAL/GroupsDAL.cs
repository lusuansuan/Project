using Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
    public class GroupsDAL
    {
        /// <summary>
        /// 获取我的群列表
        /// </summary>
        /// <param name="UserId">当前用户Id</param>
        /// <returns></returns>
        public DataSet Group_GetGroupsList(Guid UserId)
        {
            try
            {
                List<IDataParameter> LstParam = new List<IDataParameter>();
                LstParam.Add(Common.OADBHelperSQL.CreateParameter("@UserId", SqlDbType.UniqueIdentifier, UserId));
                return Common.OADBHelperSQL.RunProcedure("pGroup_GetGroupsList", LstParam.ToArray(), "Data");
            }
            catch (Exception ex)
            {
                return Common.OADBHelperSQL.CustomDataSet(false);
            }
        }


        /// <summary>
        /// 获取所有群列表
        /// </summary>
        /// <returns></returns>
        public DataSet Group_GetAllGroupsList()
        {
            try
            {
                List<IDataParameter> LstParam = new List<IDataParameter>();
                return Common.OADBHelperSQL.RunProcedure("pGroup_GetAllGroupsList", LstParam.ToArray(), "Data");
            }
            catch (Exception ex)
            {
                return Common.OADBHelperSQL.CustomDataSet(false);
            }
        }


        /// <summary>
        /// 获取群成员列表
        /// </summary>
        /// <returns></returns>
        public DataSet Group_GetGroupMemberList(Guid GroupId,Guid UserId)
        {
            try
            {
                List<IDataParameter> LstParam = new List<IDataParameter>();
                LstParam.Add(Common.OADBHelperSQL.CreateParameter("@GroupId", SqlDbType.UniqueIdentifier, GroupId));
                LstParam.Add(Common.OADBHelperSQL.CreateParameter("@UserId", SqlDbType.UniqueIdentifier, UserId));
                return Common.OADBHelperSQL.RunProcedure("pGroup_GetGroupMemberList", LstParam.ToArray(), "Data");
            }
            catch (Exception ex)
            {
                return Common.OADBHelperSQL.CustomDataSet(false);
            }
        }


        /// <summary>
        /// 添加聊天记录
        /// </summary>
        /// <param name="model">聊天实体</param>
        /// <returns></returns>
        public DataSet Friend_AddGroupsChat(Friends_GroupChat model)
        {
            try
            {
                List<IDataParameter> LstParam = new List<IDataParameter>();
                LstParam.Add(Common.OADBHelperSQL.CreateParameter("@Id", SqlDbType.UniqueIdentifier, model.Id));
                LstParam.Add(Common.OADBHelperSQL.CreateParameter("@GroupId", SqlDbType.UniqueIdentifier, model.GroupId));
                LstParam.Add(Common.OADBHelperSQL.CreateParameter("@SenderId", SqlDbType.UniqueIdentifier, model.SenderId));
                LstParam.Add(Common.OADBHelperSQL.CreateParameter("@ReceiverId", SqlDbType.UniqueIdentifier, model.ReceiverId));
                LstParam.Add(Common.OADBHelperSQL.CreateParameter("@SendContent", SqlDbType.VarChar, model.SendContent));
                LstParam.Add(Common.OADBHelperSQL.CreateParameter("@SendType", SqlDbType.VarChar, model.SendType));
                return Common.OADBHelperSQL.RunProcedure("pFriend_AddGroupsChat", LstParam.ToArray(), "Data");
            }
            catch (Exception ex)
            {
                return Common.OADBHelperSQL.CustomDataSet(false);
            }

        }


        /// <summary>
        /// 获取群聊天记录-分页
        /// </summary>
        /// <param name="UserId">当前用户Id</param>
        /// <param name="FriendId">群Id</param>
        /// <param name="Page">页码索引</param>
        /// <param name="PageSize">每页记录数</param>
        /// <returns></returns>
        public DataSet Friend_GetGroupChatList_ForPage(Guid UserId, Guid GroupId, int Page, int PageSize)
        {
            try
            {
                List<IDataParameter> LstParam = new List<IDataParameter>();
                LstParam.Add(Common.OADBHelperSQL.CreateParameter("@UserId", SqlDbType.UniqueIdentifier, UserId));
                LstParam.Add(Common.OADBHelperSQL.CreateParameter("@GroupId", SqlDbType.UniqueIdentifier, GroupId));
                LstParam.Add(Common.OADBHelperSQL.CreateParameter("@Page", SqlDbType.Int, Page));
                LstParam.Add(Common.OADBHelperSQL.CreateParameter("@PageSize", SqlDbType.Int, PageSize));
                return Common.OADBHelperSQL.RunProcedure("pFriend_GetGroupChatList_ForPage", LstParam.ToArray(), "Data");
            }
            catch (Exception ex)
            {
                return Common.OADBHelperSQL.CustomDataSet(false);
            }

        }



    }
}
