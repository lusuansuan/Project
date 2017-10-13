using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{

    /// <summary>
    /// 返回数据格式
    /// </summary>
    public class ReturnModel
    {
        /// <summary>
        /// 标识
        /// </summary>
        public int Code { get; set; }

        /// <summary>
        /// 信息
        /// </summary>
        public string Msg { get; set; }

        /// <summary>
        /// 数据
        /// </summary>
        public Object Data { get; set; }
    }

    /// <summary>
    /// 返回数据格式
    /// </summary>
    public class ReturnModel<T>
    {
        /// <summary>
        /// 标识
        /// </summary>
        public int Code { get; set; }


        /// <summary>
        /// 信息
        /// </summary>
        public string Msg { get; set; }

        /// <summary>
        /// 数据
        /// </summary>
        public T Data { get; set; }

    }
}
