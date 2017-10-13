/********************************************************************************

** 作者： Ruby	

** Email：2501837166@qq.com

** 创始时间：2017-03-01 11:40

** 描述：WebConfig 配置项读取器

**    

*********************************************************************************/
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Common
{
    /// <summary>
    /// WebConfig 配置项读取器
    /// </summary>
    public static class ConfigReadHelper
    {
        static string httpRootPath = null;

        /// <summary>
        ///  数据库连接字符串
        /// </summary>
        public static readonly string DB_ConnectionString = GetSettingValueByKey("DB_ConnectionString");

        #region 系统升级相关
        /// <summary>
        ///  系统升级费用
        /// </summary>
        public static readonly string Cost = GetSettingValueByKey("Cost");

        /// <summary>
        ///  升级使用年限
        /// </summary>
        public static readonly string Years = GetSettingValueByKey("Years");
        #endregion

        /// <summary>
        ///  域名
        /// </summary>
        public static readonly string DomainNameSystem = GetSettingValueByKey("DomainNameSystem");

        /// <summary>
        ///  Url地址一般指 IP:Port
        /// </summary>
        public static readonly string URL = GetSettingValueByKey("URL");

        #region Redis相关设置
        /// <summary>
        ///  是否打开缓存1是0否
        /// </summary>
        public static readonly string IsRedisOpenCache = GetSettingValueByKey("IsRedisOpenCache");

        /// <summary>
        ///  redis IP地址
        /// </summary>
        public static readonly string RedisIP = GetSettingValueByKey("RedisIP");

        /// <summary>
        ///  redis端口（不填默认6379
        /// </summary>
        public static readonly string RedisPort = GetSettingValueByKey("RedisPort");

        /// <summary>
        ///  redis密码（不填表示没有密码）
        /// </summary>
        public static readonly string RedisPassword = GetSettingValueByKey("RedisPassword");

        /// <summary>
        ///  redis库索引号（整数，默认有5个库，从0开始，不填表示0）
        /// </summary>
        public static readonly string RedisDb = GetSettingValueByKey("RedisDb");

        public static readonly string RedisTimeout = GetSettingValueByKey("RedisTimeout");
        #endregion

        /// <summary>
        ///  预览输出临时文件路径
        /// </summary>
        public static readonly string OutPutFilePath = GetSettingValueByKey("OutPutFilePath");


        /*/// <summary>
        ///  数据库连接字符串
        /// </summary>
        public static readonly string DB_ConnectionString = GetSettingValueByKey("DB_ConnectionString");

        /// <summary>
        ///  数据库连接字符串
        /// </summary>
        public static readonly string DB_ConnectionString = GetSettingValueByKey("DB_ConnectionString");*/

        /// <summary>
        /// web根路径
        /// </summary>
        public static string HttpRootPath
        {
            get
            {
                if (httpRootPath == null)
                {
                    string strWebFilePath = GetSettingValueByKey("WebFilePath");// ConfigurationManager.AppSettings["WebFilePath"].ToString();
                    strWebFilePath = strWebFilePath.Trim().Replace(@"Resources", "");
                    httpRootPath = strWebFilePath;
                }
                return httpRootPath;
            }
            set
            {
                if (httpRootPath == null)
                {
                    httpRootPath = value;
                }
            }
        }

        /// <summary>
        /// 依配置文件的Key,获取其对应的值
        /// </summary>
        /// <param name="strKey">配置文件的Key</param>
        /// <returns></returns>
        private static string GetSettingValueByKey(string strKey)
        {
            try
            {
                var strValue = ConfigurationManager.AppSettings[strKey];
                if (!string.IsNullOrEmpty(strValue))
                {
                    return strValue.Trim();
                }
                else
                {
                    return string.Empty;
                }
            }
            catch
            {
                return string.Empty;
            }
        }
    }
}
