using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    /// <summary>
    /// UserInfo:实体类(属性说明自动提取数据库字段的描述信息)
    /// </summary>
    [Serializable]
    public partial class UserInfo
    {
        public UserInfo()
        { }
        #region Model
        private Guid _id;
        private string _username;
        private string _account;
        private string _pasword;
        private string _headpicture;
        private string _sex;
        private string _state;
        private DateTime? _createtime;
        private Guid _createid;
        private DateTime? _updatetime;
        private Guid _updateid;
        private bool _isdelete;
        /// <summary>
        /// 用户ID
        /// </summary>
        public Guid Id
        {
            set { _id = value; }
            get { return _id; }
        }
        /// <summary>
        /// 用户姓名
        /// </summary>
        public string UserName
        {
            set { _username = value; }
            get { return _username; }
        }
        /// <summary>
        /// 账号
        /// </summary>
        public string Account
        {
            set { _account = value; }
            get { return _account; }
        }
        /// <summary>
        /// 密码
        /// </summary>
        public string Pasword
        {
            set { _pasword = value; }
            get { return _pasword; }
        }
        /// <summary>
        /// 头像路径
        /// </summary>
        public string HeadPicture
        {
            set { _headpicture = value; }
            get { return _headpicture; }
        }
        /// <summary>
        /// 性别：0男，1女，2不显示
        /// </summary>
        public string Sex
        {
            set { _sex = value; }
            get { return _sex; }
        }
        /// <summary>
        /// 用户状态:0正常，1被冻结
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
    /// 用于保存Session/cache数据
    /// </summary>
    public class SessionUserInfo : UserInfo
    {
        public string SessionId { get; set; }
    }


    /// <summary>
    /// 聊天用户信息实体
    /// </summary>
    public class ChatUserInfo
    {

        /// <summary>
        /// 好友表主键Id
        /// </summary>
        public Guid Id { get; set; }

        /// <summary>
        /// 好友Id
        /// </summary>
        public Guid FriendId { get; set; }

        /// <summary>
        /// 好友用户名
        /// </summary>
        public string UserName { get; set; }

        /// <summary>
        /// 好友头像
        /// </summary>
        public string HeadPicture { get; set; }

        /// <summary>
        /// 好友备注
        /// </summary>
        public string Remark { get; set; }

        /// <summary>
        /// 当前用户是否为对方好友：0否，1是
        /// </summary>
        public string State { get; set; }

        /// <summary>
        /// 是否在线：0都，1是
        /// </summary>
        public int IsOnline { get; set; }

        /// <summary>
        /// 未读消息数
        /// </summary>
        public int UnReadNum { get; set; }

    }

    /// <summary>
    /// 聊天组
    /// </summary>
    public class Rooms
    {
        /// <summary>
        /// 群Id
        /// </summary>
        public Guid RoomId { get; set; }

        /// <summary>
        /// 房间名
        /// </summary>
        public string RoomName { get; set; }

        /// <summary>
        /// 群组用户集合
        /// </summary>
        public List<ChatUserInfo> Users { get; set; }
    }


    /// <summary>
    /// 查询用户信息实体
    /// </summary>
    public class SeachUserInfo
    {

        /// <summary>
        /// 好友表主键Id
        /// </summary>
        public Guid Id { get; set; }

        /// <summary>
        /// 用户编号
        /// </summary>
        public int No { get; set; }

        /// <summary>
        /// 好友用户名
        /// </summary>
        public string Account { get; set; }

        /// <summary>
        /// 好友用户名
        /// </summary>
        public string UserName { get; set; }

        /// <summary>
        /// 好友头像
        /// </summary>
        public string HeadPicture { get; set; }

        /// <summary>
        /// 好友备注
        /// </summary>
        public string Remark { get; set; }

        /// <summary>
        /// 对方是否是我的好友：0否，1是
        /// </summary>
        public string IsFriend { get; set; }

        /// <summary>
        /// 是否在线：0都，1是
        /// </summary>
        public int IsOnline { get; set; }

    }
}
