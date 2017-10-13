using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Drawing;
using System.Drawing.Imaging;
using System.Drawing.Drawing2D;
using System.Reflection;
using System.Web.Mvc;

namespace Common
{
   public class Common
    {
       #region 读取Web.Config appSettings的配置
        /// <summary>
        /// 读取Web.Config appSettings的配置
        /// <param name="key">Key值</param>
        /// </summary>
        public static string Read_WebConfigSetting(string key)
        {
            return System.Web.Configuration.WebConfigurationManager.AppSettings[key];
        }
        #endregion

       #region "MD5加密"
        /// <summary>
        /// MD5加密
        /// </summary>
        /// <param name="stringPass">密码</param>
        /// <returns></returns>
        public static string GetMD5(string stringPass)
        {
            System.Security.Cryptography.MD5CryptoServiceProvider md5 = new System.Security.Cryptography.MD5CryptoServiceProvider();
            byte[] bytValue, bytHash;
            bytValue = System.Text.Encoding.UTF8.GetBytes(stringPass);
            bytHash = md5.ComputeHash(bytValue);
            md5.Clear();
            string sTemp = "";
            for (int i = 0; i < bytHash.Length; i++)
            {
                sTemp += bytHash[i].ToString("X").PadLeft(2, '0');
            }
            return sTemp.ToLower();

        }
        #endregion

       #region  上传图片（带压缩）-公用

        /// <summary>
        /// 上传图片（带压缩）-公用
        /// </summary>
        /// <param name="path">上传的相对路径(不带文件名)</param>
        /// <returns>上传的相对路径(带文件名)</returns>
        public static string UploadImg(HttpPostedFile file, string path)
        {
            try
            {
                //生成新名称
                string NewName = GetEtcOfFileName(file.FileName);    
                //不带名称的绝对路径
                string SavePath = @"" + Read_WebConfigSetting("PhyPath") + path;
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);
                }
                //保存图片
                file.SaveAs(SavePath + NewName);
                /*压缩图*/
                 Bitmap newbit = new Bitmap(SavePath + NewName);
                 CompressPicture(SavePath + NewName, SavePath + NewName.Replace(".", "min."), newbit.Height, newbit.Width, 50);
                //返回用于保存在数据库中
                return path + NewName;
            }
            catch (Exception)
            {
                return "UploadImg-Error";
            }
        }
        #endregion

       #region  上传附件

        /// <summary>
        /// 上传附件
        /// </summary>
        /// <param name="path">上传的相对路径(不带文件名)</param>
        /// <returns>上传的相对路径(带文件名)</returns>
        public static string UploadVoice(HttpPostedFile file, string path)
        {
            try
            {
                //生成新名称
                string NewName = GetEtcOfFileName(file.FileName);
                //不带名称的绝对路径
                string SavePath = @"" + Read_WebConfigSetting("PhyPath") + path; 
                if (!Directory.Exists(SavePath))
                {
                    Directory.CreateDirectory(SavePath);
                }
                //保存附件
                file.SaveAs(SavePath + NewName);
                //返回用于保存在数据库中
                return path + NewName;
            }
            catch (Exception)
            {
                return "UploadImg-Error";
            }
        }
        #endregion

       #region 根据文件名称,获取唯一的新名称
        /// <summary>
        /// 根据文件名称
        /// 获取唯一的新名称
        /// </summary>
        /// <param name="stringFileName">文件名称</param>
        /// <returns>新的名称</returns>
        public static string GetEtcOfFileName(string stringFileName)
        {
            string stringTest = "";
            if (stringFileName.LastIndexOf(".") > 0)
            {
                stringTest = stringFileName.Substring(stringFileName.LastIndexOf("."));
            }
            return GetFileNameByTime() + stringTest;
        }

        #endregion

       #region 返回时间和随机数的字符串
        /// <summary>
        /// 返回时间和随机数的字符串
        /// </summary>
        /// <returns>字符传</returns>
        public static string GetFileNameByTime()
        {
            string stringFileName = string.Empty;
            stringFileName = DateTime.Now.Year.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Day.ToString() + DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() +                     DateTime.Now.Second.ToString() +DateTime.Now.Millisecond.ToString() + GetRandom(10000, 99999);
            return stringFileName;
        }
        #endregion

       #region 获得随机数
        /// <summary>
        /// 获得随机数
        /// </summary>
        /// <param name="smallNum">小的数字</param>
        /// <param name="bigNum">大的数字</param>
        /// <returns>随机数</returns>
        public static long GetRandom(long smallNum, long bigNum)
        {
            Random rnd = new Random();
            long lngNum = (long)(rnd.NextDouble() * (bigNum - smallNum)) + smallNum;
            return lngNum;
        }
        public static long GetRandom(long smallNum, long bigNum, int seed)
        {
            Random rnd = new Random(seed);
            long lngNum = (long)(rnd.NextDouble() * (bigNum - smallNum)) + smallNum;
            return lngNum;
        }
        #endregion

       #region 无损压缩图片
        /// <summary>
        /// 无损压缩图片
        /// </summary>
        /// <param name="sFile">原图片</param>
        /// <param name="dFile">压缩后保存位置</param>
        /// <param name="dHeight">高度</param>
        /// <param name="dWidth"></param>
        /// <param name="flag">压缩质量 1-100</param>
        /// <returns></returns>
        public static bool CompressPicture(string sFile, string dFile, int dHeight, int dWidth, int flag)
        {
            System.Drawing.Image iSource = System.Drawing.Image.FromFile(sFile);
            ImageFormat tFormat = iSource.RawFormat;
            int sW = 0, sH = 0;
            //按比例缩放
            Size tem_size = new Size(iSource.Width, iSource.Height);
            if (tem_size.Width > dHeight || tem_size.Width > dWidth) //将**改成c#中的或者操作符号
            {
                if ((tem_size.Width * dHeight) > (tem_size.Height * dWidth))
                {
                    sW = dWidth;
                    sH = (dWidth * tem_size.Height) / tem_size.Width;
                }
                else
                {
                    sH = dHeight;
                    sW = (tem_size.Width * dHeight) / tem_size.Height;
                }
            }
            else
            {
                sW = tem_size.Width;
                sH = tem_size.Height;
            }
            Bitmap ob = new Bitmap(dWidth, dHeight);
            Graphics g = Graphics.FromImage(ob);
            g.Clear(Color.WhiteSmoke);
            g.CompositingQuality = CompositingQuality.HighQuality;
            g.SmoothingMode = SmoothingMode.HighQuality;
            g.InterpolationMode = InterpolationMode.HighQualityBicubic;
            g.DrawImage(iSource, new Rectangle((dWidth - sW) / 2, (dHeight - sH) / 2, sW, sH), 0, 0, iSource.Width, iSource.Height, GraphicsUnit.Pixel);
            g.Dispose();
            //以下代码为保存图片时，设置压缩质量
            EncoderParameters ep = new EncoderParameters();
            long[] qy = new long[1];
            qy[0] = flag;//设置压缩的比例1-100
            EncoderParameter eParam = new EncoderParameter(System.Drawing.Imaging.Encoder.Quality, qy);
            ep.Param[0] = eParam;
            try
            {
                ImageCodecInfo[] arrayICI = ImageCodecInfo.GetImageEncoders();
                ImageCodecInfo jpegICIinfo = null;
                for (int x = 0; x < arrayICI.Length; x++)
                {
                    if (arrayICI[x].FormatDescription.Equals("JPEG"))
                    {
                        jpegICIinfo = arrayICI[x];
                        break;
                    }
                }
                if (jpegICIinfo != null)
                {
                    ob.Save(dFile, jpegICIinfo, ep);//dFile是压缩后的新路径
                }
                else
                {
                    ob.Save(dFile, tFormat);
                }
                return true;
            }
            catch (Exception ex)
            {
                WriteLogHelper wl = new WriteLogHelper(ex, "创建压缩图失败11");
                wl.StartWriteLog();
                return false;
            }
            finally
            {
                iSource.Dispose();
                ob.Dispose();
            }
        }
        #endregion

       #region "控制层Controllers异常记录日记"
       /// <summary>
       /// 控制层Controllers异常记录日记
       /// </summary>
       /// <param name="filterContext"></param>
       /// <param name="type"></param>
        public static void WriteControllerExLog(ExceptionContext filterContext, Type type)
        {
            System.Text.StringBuilder sb = new System.Text.StringBuilder();
            try
            {
                string strFullName = type.FullName;
                string strMethodName = filterContext.RouteData.Values["action"].ToString().ToLower();
                MethodInfo oMethodInfo = null;
                foreach (var oMethod in type.GetMethods())
                {
                    if (oMethod.Name.ToLower().Equals(strMethodName))
                    {
                        oMethodInfo = oMethod;
                        break;
                    }
                }
                if (oMethodInfo != null)
                {
                    var arParameters = oMethodInfo.GetParameters();
                    sb.Append("类名:").Append(strFullName);
                    sb.Append("方法名:").Append(oMethodInfo.Name);
                    if (arParameters.Length > 0)
                    {
                        sb.Append("参数列表:");
                        foreach (var oParameterInfo in arParameters)
                        {
                            sb.Append(oParameterInfo.Name).Append("->").Append(filterContext.HttpContext.Request.Params[oParameterInfo.Name]);
                            sb.Append("  ");
                        }
                    }
                    else
                    {
                        sb.Append("参数列表:无");
                    }
                }
            }
            catch
            { }

            WriteLogHelper wl = new WriteLogHelper(filterContext.Exception, "Controller->" + sb.ToString(), false);
            wl.StartWriteLog();
        }
        #endregion

       #region 数据库操作字符串处理语句，以免出错语法错误,过滤含有特殊字符和含有SQL注入式攻击代码
        ///  <summary> 
        /// 数据库操作字符串处理语句，以免出错语法错误
        /// 过滤含有特殊字符和含有SQL注入式攻击代码 
        ///  </summary> 
        ///  <param name="Str">处理需要字符串 </param> 
        ///  <returns>新字符串</returns> 
        public static string ProcessSqlStr(string stringSql)
        {

            try
            {
                //有新的可以添加，用不上的可以暂时注释掉
                if (stringSql.Trim() != "")
                {
                    stringSql = stringSql.Replace("exec", "");
                    stringSql = stringSql.Replace("EXEC", "");
                    stringSql = stringSql.Replace("insert", "");
                    stringSql = stringSql.Replace("INSERT", "");
                    stringSql = stringSql.Replace("select", "");
                    stringSql = stringSql.Replace("SELECT", "");
                    stringSql = stringSql.Replace("delete", "");
                    stringSql = stringSql.Replace("DELETE", "");
                    stringSql = stringSql.Replace("update", "");
                    stringSql = stringSql.Replace("UPDATE", "");
                    stringSql = stringSql.Replace("count", "");
                    stringSql = stringSql.Replace("COUNT", "");
                    stringSql = stringSql.Replace("*", "");
                    stringSql = stringSql.Replace("mid", "");
                    stringSql = stringSql.Replace("MID", "");
                    stringSql = stringSql.Replace("master", "");
                    stringSql = stringSql.Replace("MASTER", "");
                    stringSql = stringSql.Replace("truncate", "");
                    stringSql = stringSql.Replace("TRUNCATE", "");
                    stringSql = stringSql.Replace("char", "");
                    stringSql = stringSql.Replace("CHAR", "");
                    stringSql = stringSql.Replace("declare", "");
                    stringSql = stringSql.Replace("DECLARE", "");
                    stringSql = stringSql.Replace("WHERE", "");
                    stringSql = stringSql.Replace("where", "");
                    stringSql = stringSql.Replace("'", "");
                    stringSql = stringSql.Replace("\"", "");
                    stringSql = stringSql.Replace("-", "");
                    stringSql = stringSql.Replace("+", "");
                    stringSql = stringSql.Replace("&", "");
                    stringSql = stringSql.Replace("<", "");
                    stringSql = stringSql.Replace(">", "");
                    stringSql = stringSql.Replace("<>", "");
                    stringSql = stringSql.Replace("'0001-1-1 0:00:00'", "null");
                    stringSql = stringSql.Replace("0001-1-1 0:00:00", "null");
                    stringSql = stringSql.Replace("(0,", "(null,");
                    stringSql = stringSql.Replace("('0',", "(null,");
                    stringSql = stringSql.Replace(",0)", ",null)");
                    stringSql = stringSql.Replace(",'0')", ",null)");
                    stringSql = stringSql.Replace(",0,", ",null,");
                    stringSql = stringSql.Replace("('',", "(null,");
                    stringSql = stringSql.Replace(",'')", ",null)");
                    stringSql = stringSql.Replace(",'',", ",null,");
                    stringSql = stringSql.Replace("-1,", "null,");
                    stringSql = stringSql.Replace("'-1',", ",null,");
                    stringSql = stringSql.Replace("'null'", "null");
                    stringSql = stringSql.Replace("where and", "where ");
                    stringSql = stringSql.Replace("= null", "is null");
                    stringSql = stringSql.Replace("=null", "is null");
                    stringSql = stringSql.Replace("script", "");
                    stringSql = stringSql.Replace("SCRIPT", "");
                }
                return stringSql;
            }
            catch (Exception ex)
            {
                string stringError = ex.ToString();
                return "";
            }

        }
        #endregion
    }

}
