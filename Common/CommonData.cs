using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Model;

namespace Common
{
    public static class CommonData
    {
        public static string GetSrc(UploadSrc SrcType, string Account)
        { 
           string strSrc = string.Empty;
           strSrc = "/Upload/" + Account;
           switch (SrcType)
            {
                case UploadSrc.HeadPicture: strSrc = strSrc + "/HeadPicture/"; break;
            }
           return strSrc;
        }
    }


    public enum UploadSrc
    {
        /// <summary>
        /// 头像上传路径
        /// </summary>
        HeadPicture
    }

    


}
