/********************************************************************************

** 作者： Ruby	

** Email：2501837166@qq.com

** 创始时间：2017-03-01 11:40

** 描述：WebConfig 配置项读取器

**    

*********************************************************************************/
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Web;

namespace Common
{
    /// <summary>
    /// 系统日志存写器
    /// </summary>
    public class WriteLogHelper : IDisposable
    {
        private string mstrPath = string.Empty;
        private string mstrLogInfo = string.Empty;

        public WriteLogHelper(string strMsg)
        {
            StringBuilder sb = new StringBuilder();
            string strClientIP = string.Empty;// Utility.GetClientIp();
            try
            {
                ClientInfo clientInfo = new ClientInfo();
                strClientIP = clientInfo.GetClientIp();
            }
            catch
            {
            }
            sb.Append(@"来自").Append(String.IsNullOrEmpty(strClientIP) ? "Global" : strClientIP);
            sb.Append(@"系统错误信息,时间：");
            sb.Append(string.Format("{0:yyyy-MM-dd HH:mm:ss}", DateTime.Now));
            sb.Append(@"--Message:").Append(strMsg);
            this.mstrPath = ConfigReadHelper.HttpRootPath;
            if (HttpContext.Current != null)
                this.mstrPath = HttpContext.Current.Server.MapPath(@"~");
            this.mstrLogInfo = sb.ToString();
        }

        public WriteLogHelper(string strPath, string strLogInfo)
        {
            this.mstrPath = strPath;
            StringBuilder sb = new StringBuilder();

            string strClientIP = string.Empty;// Utility.GetClientIp();
            try
            {
                ClientInfo clientInfo = new ClientInfo();
                strClientIP = clientInfo.GetClientIp();
            }
            catch
            {
            }
            sb.Append(@"来自").Append(strClientIP);
            sb.Append(@"系统异常信息,时间：");
            sb.Append(string.Format("{0:yyyy-MM-dd HH:mm:ss}", DateTime.Now));
            sb.Append(@"--").Append(strLogInfo);
            this.mstrLogInfo = sb.ToString();
        }

        public WriteLogHelper(Exception ex,bool blnShowStackTrace=true)
        {
            if (ex.InnerException != null)
            {
                ex = ex.InnerException;
            }
            StringBuilder sb = new StringBuilder();
            string strClientIP = string.Empty;// Utility.GetClientIp();
            try
            {
                ClientInfo clientInfo = new ClientInfo();
                strClientIP = clientInfo.GetClientIp();
            }
            catch
            {
            }
            sb.Append(@"来自").Append(String.IsNullOrEmpty(strClientIP) ? "Global" : strClientIP);
            sb.Append(@"系统异常信息,时间：");
            sb.Append(string.Format("{0:yyyy-MM-dd HH:mm:ss}", DateTime.Now));
            sb.Append(@"--Message:").Append(ex.Message);
            if (blnShowStackTrace)
            {
                sb.Append(@"--StackTrace:").Append(ex.StackTrace);
                sb.Append(@"--Source:").Append(ex.Source);
            }
            this.mstrPath = ConfigReadHelper.HttpRootPath;
            if (HttpContext.Current != null)
                this.mstrPath = HttpContext.Current.Server.MapPath(@"~");
            this.mstrLogInfo = sb.ToString();
        }

        public WriteLogHelper(Exception ex, string strSql, bool blnShowStackTrace = true)
        {
            if (ex.InnerException != null)
            {
                ex = ex.InnerException;
            }
            StringBuilder sb = new StringBuilder();
            string strClientIP = string.Empty;   // Utility.GetClientIp();
            try
            {
                ClientInfo clientInfo = new ClientInfo();
                strClientIP = clientInfo.GetClientIp();
            }
            catch
            {
            }
            sb.Append(@"来自").Append(String.IsNullOrEmpty(strClientIP) ? "Global" : strClientIP);
            sb.Append(@"系统异常信息,时间：");
            sb.Append(string.Format("{0:yyyy-MM-dd HH:mm:ss}", DateTime.Now));
            sb.Append(@"--Message:").Append(ex.Message);
            if (blnShowStackTrace)
            {
                sb.Append(@" --StackTrace:").Append(ex.StackTrace);
                sb.Append(@" --Source:").Append(ex.Source);
            }
            sb.Append(@" --Sql:").Append(strSql);
            this.mstrPath = ConfigReadHelper.HttpRootPath;
            if (HttpContext.Current != null)
                this.mstrPath = HttpContext.Current.Server.MapPath(@"~");
            this.mstrLogInfo = sb.ToString();
        }

        public void StartWriteLog()
        {
            Thread oThread = new Thread(new ThreadStart(this.LogThread));
            oThread.Priority = ThreadPriority.Lowest;
            oThread.IsBackground = true;
            oThread.Start();
        }

        public void Dispose()
        {
            mstrPath = ConfigReadHelper.HttpRootPath;
            mstrLogInfo = string.Empty;
        }

        private void LogThread()
        {
            if (string.IsNullOrEmpty(mstrPath))
                return;
            string strPath = mstrPath + @"\\Log";
            DirectoryInfo diTempFileDir = new DirectoryInfo(strPath);
            if (!diTempFileDir.Exists)//先创建文件夹                        
                Directory.CreateDirectory(strPath);
            string strFN = string.Format("{0:yyyyMMdd}", System.DateTime.Now) + "Log.txt";
            string strFileName = strPath + @"\\" + strFN;
            StreamWriter sr = null;
            try
            {
                if (!File.Exists(strFileName))
                {
                    sr = File.CreateText(strFileName);
                }
                else
                {
                    sr = File.AppendText(strFileName);
                }
                sr.WriteLine(mstrLogInfo);
            }
            catch
            {
            }
            finally
            {
                if (sr != null)
                {
                    sr.Close();
                    sr.Dispose();
                }
            }
        }
    }
    public class ClientInfo
    {
        public string GetClientIp()
        {
            if (System.Web.HttpContext.Current.Request.ServerVariables["HTTP_VIA"] != null)
                return System.Web.HttpContext.Current.Request.ServerVariables["HTTP_X_FORWARDED_FOR"].Split(new char[] { ',' })[0];
            else
                return System.Web.HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"];
        }
    }
}
