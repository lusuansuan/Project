using DAL;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace BLL
{
    public class HomeBLL
    {
        HomeDAL oHomeDAL = new HomeDAL();


        /// <summary>
        /// 登陆验证
        /// </summary>
        /// <param name="account">账号</param>
        /// <param name="pswd">密码</param>
        /// <returns></returns>
        public object LoginCheck(string account, string pswd)
        {
            DataSet ds = oHomeDAL.LoginCheck(account, pswd);
            return Common.JsonHelper.ToJson_L(ds);
        }

        /// <summary>
        /// 注册
        /// </summary>
        /// <param name="model">注册信息</param>
        /// <returns></returns>
        public object Register(UserInfo model)
        {
            DataSet ds = oHomeDAL.Register(model);
            return Common.JsonHelper.ToJson_L(ds);
        }



    }
}
