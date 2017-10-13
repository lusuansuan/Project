using DAL;
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

    }
}
