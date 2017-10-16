using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    /// <summary>
    /// Friends_Apply:实体类(属性说明自动提取数据库字段的描述信息)
    /// </summary>
    [Serializable]
    public partial class Friends_Apply
    {
        public Friends_Apply()
        { }
        #region Model
        private Guid _id;
        private Guid _applyerid;
        private Guid _ownerid;
        private string _remark;
        private string _isapply;
        private string _isread;
        private DateTime? _createtime;
        private Guid _createid;
        private DateTime? _updatetime;
        private Guid _updateid;
        private bool _isdelete;
        /// <summary>
        /// 
        /// </summary>
        public Guid Id
        {
            set { _id = value; }
            get { return _id; }
        }
        /// <summary>
        /// 申请者Id
        /// </summary>
        public Guid ApplyerId
        {
            set { _applyerid = value; }
            get { return _applyerid; }
        }
        /// <summary>
        /// 接收者Id
        /// </summary>
        public Guid OwnerId
        {
            set { _ownerid = value; }
            get { return _ownerid; }
        }
        /// <summary>
        /// 备注
        /// </summary>
        public string Remark
        {
            set { _remark = value; }
            get { return _remark; }
        }
        /// <summary>
        /// 是否审核：0未审核，1已审核
        /// </summary>
        public string IsApply
        {
            set { _isapply = value; }
            get { return _isapply; }
        }
        /// <summary>
        /// 是否查看：0未看，1已看
        /// </summary>
        public string IsRead
        {
            set { _isread = value; }
            get { return _isread; }
        }
        /// <summary>
        /// 创建时间
        /// </summary>
        public DateTime? CreateTime
        {
            set { _createtime = value; }
            get { return _createtime; }
        }
        /// <summary>
        /// 创建人Id
        /// </summary>
        public Guid CreateId
        {
            set { _createid = value; }
            get { return _createid; }
        }
        /// <summary>
        /// 修改时间
        /// </summary>
        public DateTime? UpdateTime
        {
            set { _updatetime = value; }
            get { return _updatetime; }
        }
        /// <summary>
        /// 修改人Id
        /// </summary>
        public Guid UpdateId
        {
            set { _updateid = value; }
            get { return _updateid; }
        }
        /// <summary>
        /// 是否删除：0未删除，1已删除
        /// </summary>
        public bool IsDelete
        {
            set { _isdelete = value; }
            get { return _isdelete; }
        }
        #endregion Model

    }
}
