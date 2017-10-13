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


    }
}
