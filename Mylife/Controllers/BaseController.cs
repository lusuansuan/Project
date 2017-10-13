using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Model;
using System.Text;

namespace Mylife.Controllers
{
    public class BaseController : Controller
    {

        SessionUserInfo model = null;

        protected override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            model = (SessionUserInfo)Session["UserInfo"];
            if (model == null)
            {
                filterContext.Result = new ContentResult()
                {
                    Content = "{\"IsLogin\":0,\"Msg\":\"未登录,请先登陆\"}",
                    ContentEncoding = Encoding.UTF8,
                    ContentType = "application/json"
                };
            }
            base.OnActionExecuting(filterContext);
        }

        /// <summary>
        /// 获取当前用户信息
        /// </summary>
        /// <returns></returns>
        public SessionUserInfo GetUserInfo()
        {
            return model;
        }

        /// <summary>
        /// 返回json对象
        /// </summary>
        /// <param name="strJsoin"></param>
        public void JsonResponse(string strJson)
        {
            Response.Clear();
            Response.BufferOutput = true;
            Response.ContentType = "application/json";
            Response.Write(strJson);
            Response.End();
        }

        /// <summary>
        /// 重写错误信息并写到日志里
        /// </summary>
        /// <param name="filterContext"></param>
        protected override void OnException(ExceptionContext filterContext)
        {
            Common.Common.WriteControllerExLog(filterContext, base.GetType());
            base.OnException(filterContext);
        }

	}
}