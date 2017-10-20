using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    /// <summary>
    /// Friends_Group:实体类(属性说明自动提取数据库字段的描述信息)
    /// </summary>
    [Serializable]
    public partial class Friends_Group
    {
        public Friends_Group()
        { }
        #region Model
        private Guid _id;
        private string _groupname;
        private Guid _ownerid;
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
        /// 群名字
        /// </summary>
        public string GroupName
        {
            set { _groupname = value; }
            get { return _groupname; }
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
        /// 是否冻结：0正常，1冻结
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


    /// <summary>
    /// 群列表
    /// </summary>
    public class Friends_GroupList
    {
        /// <summary>
        /// 群Id
        /// </summary>
        public Guid Id { get; set; }

        /// <summary>
        /// 群名称
        /// </summary>
        public string GroupName { get; set; }

        /// <summary>
        /// 群创建者Id
        /// </summary>
        public Guid OwnerId { get; set; }

        /// <summary>
        /// 未读消息数
        /// </summary>
        public int UnReadNum { get; set; }

        /// <summary>
        /// 是否是自己的群：0否，1是
        /// </summary>
        public int IsOwner { get; set; }
    }


    /// <summary>
    /// 在线聊天群及成员
    /// </summary>
    public class Friends_ChatGroup
    {
        /// <summary>
        /// 群Id
        /// </summary>
        public Guid GroupId { get; set; }

        /// <summary>
        /// 群名称
        /// </summary>
        public string GroupName { get; set; }

        /// <summary>
        /// 群用户
        /// </summary>
        public List<GroupOnLineUserInfo> GroupOnLineUserInfos { get; set; }


    }


}
