using BLL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Script.Serialization;
using Newtonsoft.Json;
using Model;
using Common;
using System.Text;
using System.Net;
using System.IO;

namespace Mylife.Controllers
{
    public class HomeController : Controller
    {
        // 跳转登陆注册页
        public ActionResult Login()
        {
            return View();
        }

        JavaScriptSerializer js = new JavaScriptSerializer();
        HomeBLL oHomeBLL = new HomeBLL();
        

        /// <summary>
        /// 登录验证
        /// </summary>
        /// <param name="Account">账号</param>
        /// <param name="Pwd">密码</param>
        /// <returns></returns>
        /// 
        [HttpPost]
        public JsonResult LoginCheck(string account, string pswd)
        {
            var obj = oHomeBLL.LoginCheck(account,Common.Common.GetMD5(pswd));
            ReturnModel<SessionUserInfo> model = JsonConvert.DeserializeObject<ReturnModel<SessionUserInfo>>(obj.ToString());
            Session["UserInfo"] = model.Data;
            model.Data.SessionId = Session.SessionID;

            //帐户信息写入Cookie,自行加密
            Response.Cookies.Add(new HttpCookie("UserId") { Value = model.Data.Id.ToString() });
            Response.Cookies.Add(new HttpCookie("UserInfo") { Value = JsonConvert.SerializeObject(model.Data) });

            return Json(model);
        }


        /// <summary>
        /// 注册
        /// </summary>
        /// <param name="data">注册信息</param>
        /// <returns></returns>

        [HttpPost]
        public JsonResult Register(string data)
        {
            UserInfo model = JsonConvert.DeserializeObject<UserInfo>(data);
            model.Id = Guid.NewGuid();
            model.Pasword = Common.Common.GetMD5(model.Pasword);
            model.HeadPicture = string.Empty;
            HttpFileCollection files = System.Web.HttpContext.Current.Request.Files;
            foreach (string name in files)
            {
                HttpPostedFile file = System.Web.HttpContext.Current.Request.Files[name];
                model.HeadPicture = Common.Common.UploadImg(file,Common.CommonData.GetSrc(Common.UploadSrc.HeadPicture, model.Account));
            }
            if (model.HeadPicture == "UploadImg-Error")
            {
                return Json(new {Code =0,Msg ="图片上传失败"});
            }
            var obj = oHomeBLL.Register(model);
            return Json(js.DeserializeObject(obj.ToString()));
        }

        /// <summary>
        /// 注销
        /// </summary>
        /// <returns></returns>
        public JsonResult Logout()
        {
            Session["UserInfo"] = null;
            return Json(new {Code=1,Msg="退出成功"});
        }

	}


}