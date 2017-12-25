using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace DAL
{
    public class HomeDAL
    {

        /// <summary>
        /// 登陆验证
        /// </summary>
        /// <param name="account">账号</param>
        /// <param name="pswd">密码</param>
        /// <returns></returns>
        public DataSet LoginCheck(string account, string pswd)
        {
            try
            {
                 List<IDataParameter> LstParam = new List<IDataParameter>();
                 LstParam.Add(Common.OADBHelperSQL.CreateParameter("@account", SqlDbType.VarChar, 50, account));
                 LstParam.Add(Common.OADBHelperSQL.CreateParameter("@pswd", SqlDbType.VarChar, 50, pswd));
                 return Common.OADBHelperSQL.RunProcedure("pSys_LoginCheck", LstParam.ToArray(), "Data");
            }
            catch (Exception ex)
            {
                return Common.OADBHelperSQL.CustomDataSet(false);
            }
                
        }

        /// <summary>
        /// 注册
        /// </summary>
        /// <param name="model">注册信息</param>
        /// <returns></returns>
        public DataSet Register(UserInfo model)
        {
            try
            {
                List<IDataParameter> LstParam = new List<IDataParameter>();
                LstParam.Add(Common.OADBHelperSQL.CreateParameter("@Id", SqlDbType.UniqueIdentifier, model.Id));
                LstParam.Add(Common.OADBHelperSQL.CreateParameter("@account", SqlDbType.VarChar, 50, model.Account));
                LstParam.Add(Common.OADBHelperSQL.CreateParameter("@UserName", SqlDbType.VarChar, 50, model.UserName));
                LstParam.Add(Common.OADBHelperSQL.CreateParameter("@pswd", SqlDbType.VarChar, 50, model.Pasword));
                LstParam.Add(Common.OADBHelperSQL.CreateParameter("@HeadPicture", SqlDbType.VarChar, 500, model.HeadPicture));
                LstParam.Add(Common.OADBHelperSQL.CreateParameter("@OpenId", SqlDbType.VarChar, 50, model.OpenId ?? ""));
                return Common.OADBHelperSQL.RunProcedure("pSys_Register", LstParam.ToArray(), "Data");
            }
            catch (Exception ex)
            {
                return Common.OADBHelperSQL.CustomDataSet(false);
            }

        }

        /// <summary>
        /// 通过QQOpenId获取用户信息
        /// </summary>
        /// <param name="OpenId"></param>
        /// <returns></returns>
        public DataSet GetUserInfoByOpenId(string OpenId)
        {
            try
            {
                List<IDataParameter> LstParam = new List<IDataParameter>();
                LstParam.Add(Common.OADBHelperSQL.CreateParameter("@OpenId", SqlDbType.VarChar, OpenId));
                return Common.OADBHelperSQL.RunProcedure("pSys_GetUserInfoByOpenId", LstParam.ToArray(), "Data");
            }
            catch (Exception ex)
            {
                return Common.OADBHelperSQL.CustomDataSet(false);
            }
        }



    }
}
