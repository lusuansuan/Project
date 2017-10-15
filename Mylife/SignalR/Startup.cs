using System;
using System.Threading.Tasks;
using Microsoft.Owin;
using Owin;
using Microsoft.AspNet.SignalR;

[assembly: OwinStartup(typeof(SignalRMVC.SignalR.Startup))]

namespace SignalRMVC.SignalR
{
    public class Startup
    {
        public void Configuration(IAppBuilder app)
        {            
            app.MapSignalR();
            //服务器的hub注册


            //重点,将MyUserFactory注入
            var userIdProvider = new MyUserFactory();
            GlobalHost.DependencyResolver.Register(typeof(IUserIdProvider), () => userIdProvider);


            //设置Webapi
            //var config = new HttpConfiguration();
            //config.Routes.MapHttpRoute(name: "DefaultApi",
            //    routeTemplate: "api/{controller}/{id}",
            //    defaults: new
            //    {
            //        id = RouteParameter.Optional
            //    });
            //System.Web.HttpContext.Current.SetSessionStateBehavior(System.Web.SessionState.SessionStateBehavior.Required);
            //app.UseWebApi(config);
            //app.MapSignalR();

        }
    }

    public class MyUserFactory : IUserIdProvider
    {

        public string GetUserId(IRequest request)
        {
            if (request.GetHttpContext().Request.Cookies["UserID"] != null)
            {
                return request.GetHttpContext().Request.Cookies["UserID"].Value;
            }
            return "";
           
        }
    }

}
