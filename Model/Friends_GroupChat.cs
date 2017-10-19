using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    /// <summary>
    /// Friends_GroupChat:实体类(属性说明自动提取数据库字段的描述信息)
    /// </summary>
    [Serializable]
    public partial class Friends_GroupChat
    {
        public Friends_GroupChat()
        { }
        #region Model
        private Guid _id;
        private Guid _groupid;
        private Guid _senderid;
        private Guid _receiverid;
        private string _sendcontent;
        private string _sendtype;
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
        /// 
        /// </summary>
        public Guid GroupId
        {
            set { _groupid = value; }
            get { return _groupid; }
        }
        /// <summary>
        /// 发送者
        /// </summary>
        public Guid SenderId
        {
            set { _senderid = value; }
            get { return _senderid; }
        }
        /// <summary>
        /// 接收者Id:@用户Id,没有@则为空guid
        /// </summary>
        public Guid ReceiverId
        {
            set { _receiverid = value; }
            get { return _receiverid; }
        }
        /// <summary>
        /// 发送内容
        /// </summary>
        public string SendContent
        {
            set { _sendcontent = value; }
            get { return _sendcontent; }
        }
        /// <summary>
        /// 发送类型：0文本，1图片，2语音
        /// </summary>
        public string SendType
        {
            set { _sendtype = value; }
            get { return _sendtype; }
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
