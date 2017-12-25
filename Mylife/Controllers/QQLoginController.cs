using BLL;
using Model;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.Mvc;
using System.Web.Script.Serialization;

namespace Mylife.Controllers
{
    public class QQLoginController : Controller
    {

        QQOauthInfo qqOauthInfo = new QQOauthInfo();
        HomeBLL oHomeBLL = new HomeBLL();
        JavaScriptSerializer js = new JavaScriptSerializer();

        private string APPID = "101438250";
        private string APPKEY = "d3cd3d9c2b8e35f51e8aebb027a7d11d";
        private string CallBackAddress = "http://www.letmess.com/";

        public void QQLogin()
        {

            string state = new Random(100000).Next(99, 99999).ToString();//随机数
            Session["state"] = state;
            string callback = CallBackAddress + "QQLogin/GetAccess_token"; //System.Web.HttpUtility.UrlEncode(CallBackAddress + "QQLogin/GetAccess_token", Encoding.UTF8);//回调处理地址
            string url = string.Format("https://graph.qq.com/oauth2.0/authorize?client_id={0}&response_type=code&redirect_uri={1}&state={2}", APPID, callback, state);//互联地址
            Response.Redirect(url);
        }


        public void GetAccess_token()
        {
            try
            {
                string code = Request.QueryString["code"].ToString();
                string state = Request.QueryString["state"].ToString();

                //没用的回调函数
                string callback = CallBackAddress + "Web/html/main.html";// System.Web.HttpUtility.UrlEncode(CallBackAddress + "QQLogin/GetOpenId", Encoding.UTF8);
                //配置请求腾讯地址的参数
                string url = string.Format("https://graph.qq.com/oauth2.0/token?grant_type={0}&client_id={1}&client_secret={2}&code={3}&redirect_uri={4}", "authorization_code", APPID, APPKEY, code, callback);
                //获取AccessToken
                string res = LoadHtmlUserGetType(url, Encoding.UTF8);

                qqOauthInfo.AccessToken = CutString(res, "access_token=", "&expires_in=");
                qqOauthInfo.ExpiresIn = CutString(res, "expires_in=", "&refresh_token=");
                qqOauthInfo.RefreshToken = res.Substring(res.IndexOf("&refresh_token="), res.Length - res.IndexOf("&refresh_token="));
                if (string.IsNullOrEmpty(qqOauthInfo.AccessToken) || string.IsNullOrEmpty(qqOauthInfo.ExpiresIn) || string.IsNullOrEmpty(qqOauthInfo.RefreshToken))
                {
                    Response.Write("获取AccessToken错误");
                    Response.End();
                }
                //-----获取OpenId
                string _res = LoadHtmlUserGetType("https://graph.qq.com/oauth2.0/me?access_token=" + qqOauthInfo.AccessToken, Encoding.UTF8);
                if (!_res.Contains("openid"))
                {
                    Response.Write("获取openid错误");
                    Response.End();
                }
                string openID = CutString(_res, @"openid"":""", @"""}");
                //通过OpernId获取用户
                var obj = oHomeBLL.GetUserInfoByOpenId(openID);
                ReturnModel model = js.Deserialize<ReturnModel>(obj.ToString());
                //没有注册过

                if (js.Serialize(model.Data) == "{}")
                {
                    UserInfo _model = new UserInfo();
                    _model.Id = Guid.NewGuid();
                    string QQUserInfo = GetUserInfo(qqOauthInfo, openID);
                    _model.UserName = CutString(QQUserInfo, @"""nickname"": """, @""",");
                    _model.HeadPicture = CutString(QQUserInfo, @"""figureurl_qq_1"": """, @""",").Replace("\\/", "/");//大小为40×40像素的QQ头像URL。
                    _model.Account = _model.UserName;
                    _model.OpenId = openID;
                    obj = oHomeBLL.Register(_model);
                    model = js.Deserialize<ReturnModel>(obj.ToString());
                    if (model.Code == 0)
                    {
                        Response.Write("登陆失败");
                        Response.End();
                    }
                    obj = oHomeBLL.GetUserInfoByOpenId(openID);
                }
                ReturnModel<SessionUserInfo> Smodel = js.Deserialize<ReturnModel<SessionUserInfo>>(obj.ToString());
                Session["UserInfo"] = Smodel.Data;
                Smodel.Data.SessionId = Session.SessionID;
                //帐户信息写入Cookie,自行加密
                Response.Cookies.Add(new HttpCookie("UserId") { Value = Smodel.Data.Id.ToString() });
                Response.Cookies.Add(new HttpCookie("UserInfo") { Value = js.Serialize(Smodel.Data) });
                Response.Redirect(callback);
                Response.End();
            }
            catch (Exception ex)
            {
                Response.Write("代码异常");
                Response.End();
            }
        }

        /// <summary>
        /// 获取QQ昵称
        /// </summary>
        /// <param name="qqOauthInfo"></param>
        /// <param name="openID"></param>
        /// <returns></returns>
        private string GetUserInfo(QQOauthInfo qqOauthInfo, string openID)
        {
            string urlGetInfo = string.Format(@"https://graph.qq.com/user/get_user_info?access_token={0}&oauth_consumer_key={1}&openid={2}", qqOauthInfo.AccessToken, APPID, openID);
            string resUserInfo = LoadHtmlUserGetType(urlGetInfo, Encoding.UTF8);
            if (!resUserInfo.Contains("\"msg\": \"\""))
            {
                Response.Write("出错了:获取用户信息出错");
                Response.End();
            }
            return resUserInfo;// 
        } 


        /// <summary>
        /// 截取字符串
        /// </summary>
        /// <param name="str"></param>
        /// <param name="startStr"></param>
        /// <param name="endStr"></param>
        /// <returns></returns>
        public string CutString(string str, string startStr, string endStr)
        {
            int begin, end;
            begin = str.IndexOf(startStr, 0) + startStr.Length; //开始位置 
            end = str.IndexOf(endStr, begin); //结束位置 
            return str.Substring(begin, end - begin); //取搜索的条数，用结束的位置-开始的位置,并返回
        }



        /// <summary>
        /// 请求地址获取接口
        /// </summary>
        /// <param name="urlString"></param>
        /// <param name="encoding"></param>
        /// <returns></returns>
        public string LoadHtmlUserGetType(string urlString, Encoding encoding)
        {
            HttpWebRequest httpWebRequest = null;
            HttpWebResponse httpWebRespones = null;
            Stream stream = null;
            string htmlString = string.Empty;
            try
            {
                httpWebRequest = WebRequest.Create(urlString) as HttpWebRequest;
            }
            catch (Exception ex)
            {
                throw new Exception("建立页面请求时发生错误！", ex);
            }
            httpWebRequest.UserAgent = "Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 5.1; .NET CLR 2.0.50727; Maxthon 2.0)";
            try
            {
                httpWebRespones = (HttpWebResponse)httpWebRequest.GetResponse(); stream = httpWebRespones.GetResponseStream();
            }
            catch (Exception ex)
            {
                throw new Exception("接受服务器返回页面时发生错误！", ex);
            }
            StreamReader streamReader = new StreamReader(stream);
            //StreamReader streamReader = new StreamReader(stream, encoding);
            try
            {
                htmlString = streamReader.ReadToEnd();
            }
            catch (Exception ex)
            {
                throw new Exception("读取页面数据时发生错误！", ex);
            }
            streamReader.Close(); stream.Close(); return htmlString;
        }




	}






    public class QQOauthInfo
    {
        public string AccessToken { get; set; }

        public string ExpiresIn { get; set; }

        public string RefreshToken { get; set; }
    }


}