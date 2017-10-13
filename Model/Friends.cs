using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    /// <summary>
    /// Friends:实体类(属性说明自动提取数据库字段的描述信息)
    /// </summary>
    [Serializable]
    public partial class Friends
    {
        public Friends()
        { }
        #region Model
        private Guid _id;
        private Guid _friendid;
        private Guid _ownerid;
        private string _remark;
        private string _state;
        private DateTime? _createtime;
        private Guid _createid;
        private DateTime? _updatetime;
        private Guid _updateid;
        private bool _isdelete;
        /// <summary>
        /// 主键Id
        /// </summary>
        public Guid Id
        {
            set { _id = value; }
            get { return _id; }
        }
        /// <summary>
        /// 好友Id
        /// </summary>
        public Guid FriendId
        {
            set { _friendid = value; }
            get { return _friendid; }
        }
        /// <summary>
        /// 拥有者Id
        /// </summary>
        public Guid OwnerId
        {
            set { _ownerid = value; }
            get { return _ownerid; }
        }
        /// <summary>
        /// 好友备注
        /// </summary>
        public string Remark
        {
            set { _remark = value; }
            get { return _remark; }
        }
        /// <summary>
        /// 拥有者是否为对方好友：0否，1是
        /// </summary>
        public string State
        {
            set { _state = value; }
            get { return _state; }
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
