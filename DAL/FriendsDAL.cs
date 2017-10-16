using Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAL
{
   public class FriendsDAL
    {


       /// <summary>
       /// 获取好友列表
       /// </summary>
       /// <param name="UserId">当前用户Id</param>
       /// <returns></returns>
       public DataSet Friend_GetFriendsList(Guid UserId)
       {
           try
           {
               List<IDataParameter> LstParam = new List<IDataParameter>();
               LstParam.Add(Common.OADBHelperSQL.CreateParameter("@UserId", SqlDbType.UniqueIdentifier,UserId));
               return Common.OADBHelperSQL.RunProcedure("pFriend_GetFriendsList", LstParam.ToArray(), "Data");
           }
           catch (Exception ex)
           {
               return Common.OADBHelperSQL.CustomDataSet(false);
           }

       }

       /// <summary>
       /// 获取和好友的聊天记录-分页
       /// </summary>
       /// <param name="UserId">当前用户Id</param>
       /// <param name="FriendId">好友用户Id</param>
       /// <param name="Page">页码索引</param>
       /// <param name="PageSize">每页记录数</param>
       /// <returns></returns>
       public DataSet Friend_GetFriendsChatList_ForPage(Guid UserId,Guid FriendId,int Page,int PageSize)
       {
           try
           {
               List<IDataParameter> LstParam = new List<IDataParameter>();
               LstParam.Add(Common.OADBHelperSQL.CreateParameter("@UserId", SqlDbType.UniqueIdentifier, UserId));
               LstParam.Add(Common.OADBHelperSQL.CreateParameter("@FriendId", SqlDbType.UniqueIdentifier, FriendId));
               LstParam.Add(Common.OADBHelperSQL.CreateParameter("@Page", SqlDbType.Int, Page));
               LstParam.Add(Common.OADBHelperSQL.CreateParameter("@PageSize", SqlDbType.Int, PageSize));
               return Common.OADBHelperSQL.RunProcedure("pFriend_GetFriendsChatList_ForPage", LstParam.ToArray(), "Data");
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
       public DataSet Friend_AddFriendsChatList(Friends_Chat model)
       {
           try
           {
               List<IDataParameter> LstParam = new List<IDataParameter>();
               LstParam.Add(Common.OADBHelperSQL.CreateParameter("@Id", SqlDbType.UniqueIdentifier, model.Id));
               LstParam.Add(Common.OADBHelperSQL.CreateParameter("@SenderId", SqlDbType.UniqueIdentifier, model.SenderId));
               LstParam.Add(Common.OADBHelperSQL.CreateParameter("@OwnerId", SqlDbType.UniqueIdentifier, model.OwnerId));
               LstParam.Add(Common.OADBHelperSQL.CreateParameter("@SendContent", SqlDbType.VarChar, model.SendContent));
               LstParam.Add(Common.OADBHelperSQL.CreateParameter("@SendType", SqlDbType.VarChar, model.SendType));
               return Common.OADBHelperSQL.RunProcedure("pFriend_AddFriendsChat", LstParam.ToArray(), "Data");
           }
           catch (Exception ex)
           {
               return Common.OADBHelperSQL.CustomDataSet(false);
           }

       }


       /// <summary>
       /// 查询用户
       /// </summary>
       /// <param name="UserId">当前用户Id</param>
       /// <param name="SeachKey">查询关键字</param>
       /// <returns></returns>
       public DataSet Friend_SeachUserInfoList(Guid UserId, string SeachKey)
       {
           try
           {
               List<IDataParameter> LstParam = new List<IDataParameter>();
               LstParam.Add(Common.OADBHelperSQL.CreateParameter("@UserId", SqlDbType.UniqueIdentifier, UserId));
               LstParam.Add(Common.OADBHelperSQL.CreateParameter("@SeachKey", SqlDbType.VarChar, SeachKey));
               return Common.OADBHelperSQL.RunProcedure("pFriend_SeachUserInfoList", LstParam.ToArray(), "Data");
           }
           catch (Exception ex)
           {
               return Common.OADBHelperSQL.CustomDataSet(false);
           }
       }


       /// <summary>
       /// 添加好友申请
       /// </summary>
       /// <param name="model">好友申请信息实体</param>
       /// <returns></returns>
       public DataSet Friend_AddFriendsApply(Friends_Apply model)
       {
           try
           {
               List<IDataParameter> LstParam = new List<IDataParameter>();
               LstParam.Add(Common.OADBHelperSQL.CreateParameter("@Id", SqlDbType.UniqueIdentifier, model.Id));
               LstParam.Add(Common.OADBHelperSQL.CreateParameter("@ApplyerId", SqlDbType.UniqueIdentifier, model.ApplyerId));
               LstParam.Add(Common.OADBHelperSQL.CreateParameter("@OwnerId", SqlDbType.UniqueIdentifier, model.OwnerId));
               LstParam.Add(Common.OADBHelperSQL.CreateParameter("@Remark", SqlDbType.VarChar, model.Remark));
               return Common.OADBHelperSQL.RunProcedure("pFriend_AddFriendsApply", LstParam.ToArray(), "Data");
           }
           catch (Exception ex)
           {
               return Common.OADBHelperSQL.CustomDataSet(false);
           }
       }




    }
}
