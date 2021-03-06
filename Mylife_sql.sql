USE [Mylife]
GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', N'COLUMN',N'IsDelete'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'IsDelete'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', N'COLUMN',N'UpdateId'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'UpdateId'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', N'COLUMN',N'UpdateTime'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'UpdateTime'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', N'COLUMN',N'CreateId'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'CreateId'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', N'COLUMN',N'CreateTime'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'CreateTime'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', N'COLUMN',N'QQOpenId'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'QQOpenId'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', N'COLUMN',N'State'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'State'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', N'COLUMN',N'Sex'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'Sex'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', N'COLUMN',N'HeadPicture'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'HeadPicture'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', N'COLUMN',N'Pasword'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'Pasword'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', N'COLUMN',N'Account'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'Account'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', N'COLUMN',N'UserName'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'UserName'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', N'COLUMN',N'No'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'No'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', N'COLUMN',N'Id'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'Id'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_News', N'COLUMN',N'IsDelete'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_News', @level2type=N'COLUMN',@level2name=N'IsDelete'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_News', N'COLUMN',N'UpdateId'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_News', @level2type=N'COLUMN',@level2name=N'UpdateId'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_News', N'COLUMN',N'UpdateTime'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_News', @level2type=N'COLUMN',@level2name=N'UpdateTime'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_News', N'COLUMN',N'CreateId'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_News', @level2type=N'COLUMN',@level2name=N'CreateId'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_News', N'COLUMN',N'CreateTime'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_News', @level2type=N'COLUMN',@level2name=N'CreateTime'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_News', N'COLUMN',N'UnReadNum'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_News', @level2type=N'COLUMN',@level2name=N'UnReadNum'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_News', N'COLUMN',N'SendContent'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_News', @level2type=N'COLUMN',@level2name=N'SendContent'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_News', N'COLUMN',N'OwnerId'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_News', @level2type=N'COLUMN',@level2name=N'OwnerId'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_News', N'COLUMN',N'SenderId'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_News', @level2type=N'COLUMN',@level2name=N'SenderId'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupNews', N'COLUMN',N'IsDelete'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupNews', @level2type=N'COLUMN',@level2name=N'IsDelete'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupNews', N'COLUMN',N'UpdateId'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupNews', @level2type=N'COLUMN',@level2name=N'UpdateId'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupNews', N'COLUMN',N'UpdateTime'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupNews', @level2type=N'COLUMN',@level2name=N'UpdateTime'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupNews', N'COLUMN',N'CreateId'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupNews', @level2type=N'COLUMN',@level2name=N'CreateId'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupNews', N'COLUMN',N'CreateTime'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupNews', @level2type=N'COLUMN',@level2name=N'CreateTime'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupNews', N'COLUMN',N'UnReadNum'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupNews', @level2type=N'COLUMN',@level2name=N'UnReadNum'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupNews', N'COLUMN',N'SendContent'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupNews', @level2type=N'COLUMN',@level2name=N'SendContent'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupNews', N'COLUMN',N'OwnerId'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupNews', @level2type=N'COLUMN',@level2name=N'OwnerId'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupNews', N'COLUMN',N'SenderId'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupNews', @level2type=N'COLUMN',@level2name=N'SenderId'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupNews', N'COLUMN',N'GroupId'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupNews', @level2type=N'COLUMN',@level2name=N'GroupId'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupNews', N'COLUMN',N'Id'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupNews', @level2type=N'COLUMN',@level2name=N'Id'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupMember', N'COLUMN',N'IsDelete'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupMember', @level2type=N'COLUMN',@level2name=N'IsDelete'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupMember', N'COLUMN',N'UpdateId'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupMember', @level2type=N'COLUMN',@level2name=N'UpdateId'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupMember', N'COLUMN',N'UpdateTime'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupMember', @level2type=N'COLUMN',@level2name=N'UpdateTime'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupMember', N'COLUMN',N'CreateId'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupMember', @level2type=N'COLUMN',@level2name=N'CreateId'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupMember', N'COLUMN',N'CreateTime'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupMember', @level2type=N'COLUMN',@level2name=N'CreateTime'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupMember', N'COLUMN',N'GroupMemberName'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupMember', @level2type=N'COLUMN',@level2name=N'GroupMemberName'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupMember', N'COLUMN',N'GroupMemberId'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupMember', @level2type=N'COLUMN',@level2name=N'GroupMemberId'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupMember', N'COLUMN',N'GroupId'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupMember', @level2type=N'COLUMN',@level2name=N'GroupId'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupMember', N'COLUMN',N'Id'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupMember', @level2type=N'COLUMN',@level2name=N'Id'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupChat', N'COLUMN',N'IsDelete'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupChat', @level2type=N'COLUMN',@level2name=N'IsDelete'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupChat', N'COLUMN',N'UpdateId'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupChat', @level2type=N'COLUMN',@level2name=N'UpdateId'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupChat', N'COLUMN',N'UpdateTime'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupChat', @level2type=N'COLUMN',@level2name=N'UpdateTime'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupChat', N'COLUMN',N'CreateId'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupChat', @level2type=N'COLUMN',@level2name=N'CreateId'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupChat', N'COLUMN',N'CreateTime'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupChat', @level2type=N'COLUMN',@level2name=N'CreateTime'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupChat', N'COLUMN',N'SendType'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupChat', @level2type=N'COLUMN',@level2name=N'SendType'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupChat', N'COLUMN',N'SendContent'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupChat', @level2type=N'COLUMN',@level2name=N'SendContent'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupChat', N'COLUMN',N'ReceiverId'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupChat', @level2type=N'COLUMN',@level2name=N'ReceiverId'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupChat', N'COLUMN',N'SenderId'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupChat', @level2type=N'COLUMN',@level2name=N'SenderId'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Group', N'COLUMN',N'IsDelete'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Group', @level2type=N'COLUMN',@level2name=N'IsDelete'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Group', N'COLUMN',N'UpdateId'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Group', @level2type=N'COLUMN',@level2name=N'UpdateId'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Group', N'COLUMN',N'UpdateTime'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Group', @level2type=N'COLUMN',@level2name=N'UpdateTime'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Group', N'COLUMN',N'CreateId'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Group', @level2type=N'COLUMN',@level2name=N'CreateId'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Group', N'COLUMN',N'CreateTime'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Group', @level2type=N'COLUMN',@level2name=N'CreateTime'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Group', N'COLUMN',N'State'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Group', @level2type=N'COLUMN',@level2name=N'State'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Group', N'COLUMN',N'OwnerId'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Group', @level2type=N'COLUMN',@level2name=N'OwnerId'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Group', N'COLUMN',N'GroupName'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Group', @level2type=N'COLUMN',@level2name=N'GroupName'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Group', N'COLUMN',N'Id'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Group', @level2type=N'COLUMN',@level2name=N'Id'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Chat', N'COLUMN',N'IsDelete'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Chat', @level2type=N'COLUMN',@level2name=N'IsDelete'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Chat', N'COLUMN',N'UpdateId'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Chat', @level2type=N'COLUMN',@level2name=N'UpdateId'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Chat', N'COLUMN',N'UpdateTime'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Chat', @level2type=N'COLUMN',@level2name=N'UpdateTime'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Chat', N'COLUMN',N'CreateId'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Chat', @level2type=N'COLUMN',@level2name=N'CreateId'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Chat', N'COLUMN',N'CreateTime'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Chat', @level2type=N'COLUMN',@level2name=N'CreateTime'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Chat', N'COLUMN',N'SendType'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Chat', @level2type=N'COLUMN',@level2name=N'SendType'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Chat', N'COLUMN',N'SendContent'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Chat', @level2type=N'COLUMN',@level2name=N'SendContent'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Chat', N'COLUMN',N'OwnerId'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Chat', @level2type=N'COLUMN',@level2name=N'OwnerId'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Chat', N'COLUMN',N'SenderId'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Chat', @level2type=N'COLUMN',@level2name=N'SenderId'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Apply', N'COLUMN',N'IsDelete'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Apply', @level2type=N'COLUMN',@level2name=N'IsDelete'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Apply', N'COLUMN',N'UpdateId'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Apply', @level2type=N'COLUMN',@level2name=N'UpdateId'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Apply', N'COLUMN',N'UpdateTime'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Apply', @level2type=N'COLUMN',@level2name=N'UpdateTime'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Apply', N'COLUMN',N'CreateId'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Apply', @level2type=N'COLUMN',@level2name=N'CreateId'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Apply', N'COLUMN',N'CreateTime'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Apply', @level2type=N'COLUMN',@level2name=N'CreateTime'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Apply', N'COLUMN',N'IsRead'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Apply', @level2type=N'COLUMN',@level2name=N'IsRead'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Apply', N'COLUMN',N'IsApply'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Apply', @level2type=N'COLUMN',@level2name=N'IsApply'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Apply', N'COLUMN',N'Remark'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Apply', @level2type=N'COLUMN',@level2name=N'Remark'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Apply', N'COLUMN',N'OwnerId'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Apply', @level2type=N'COLUMN',@level2name=N'OwnerId'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Apply', N'COLUMN',N'ApplyerId'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Apply', @level2type=N'COLUMN',@level2name=N'ApplyerId'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends', N'COLUMN',N'IsDelete'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends', @level2type=N'COLUMN',@level2name=N'IsDelete'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends', N'COLUMN',N'UpdateId'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends', @level2type=N'COLUMN',@level2name=N'UpdateId'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends', N'COLUMN',N'UpdateTime'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends', @level2type=N'COLUMN',@level2name=N'UpdateTime'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends', N'COLUMN',N'CreateId'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends', @level2type=N'COLUMN',@level2name=N'CreateId'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends', N'COLUMN',N'CreateTime'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends', @level2type=N'COLUMN',@level2name=N'CreateTime'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends', N'COLUMN',N'State'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends', @level2type=N'COLUMN',@level2name=N'State'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends', N'COLUMN',N'Remark'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends', @level2type=N'COLUMN',@level2name=N'Remark'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends', N'COLUMN',N'OwnerId'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends', @level2type=N'COLUMN',@level2name=N'OwnerId'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends', N'COLUMN',N'FriendId'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends', @level2type=N'COLUMN',@level2name=N'FriendId'

GO
IF  EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends', N'COLUMN',N'Id'))
EXEC sys.sp_dropextendedproperty @name=N'MS_Description' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends', @level2type=N'COLUMN',@level2name=N'Id'

GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 2017/12/25 18:16:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserInfo]') AND type in (N'U'))
DROP TABLE [dbo].[UserInfo]
GO
/****** Object:  Table [dbo].[Friends_News]    Script Date: 2017/12/25 18:16:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Friends_News]') AND type in (N'U'))
DROP TABLE [dbo].[Friends_News]
GO
/****** Object:  Table [dbo].[Friends_GroupNews]    Script Date: 2017/12/25 18:16:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Friends_GroupNews]') AND type in (N'U'))
DROP TABLE [dbo].[Friends_GroupNews]
GO
/****** Object:  Table [dbo].[Friends_GroupMember]    Script Date: 2017/12/25 18:16:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Friends_GroupMember]') AND type in (N'U'))
DROP TABLE [dbo].[Friends_GroupMember]
GO
/****** Object:  Table [dbo].[Friends_GroupChat]    Script Date: 2017/12/25 18:16:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Friends_GroupChat]') AND type in (N'U'))
DROP TABLE [dbo].[Friends_GroupChat]
GO
/****** Object:  Table [dbo].[Friends_Group]    Script Date: 2017/12/25 18:16:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Friends_Group]') AND type in (N'U'))
DROP TABLE [dbo].[Friends_Group]
GO
/****** Object:  Table [dbo].[Friends_Chat]    Script Date: 2017/12/25 18:16:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Friends_Chat]') AND type in (N'U'))
DROP TABLE [dbo].[Friends_Chat]
GO
/****** Object:  Table [dbo].[Friends_Apply]    Script Date: 2017/12/25 18:16:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Friends_Apply]') AND type in (N'U'))
DROP TABLE [dbo].[Friends_Apply]
GO
/****** Object:  Table [dbo].[Friends]    Script Date: 2017/12/25 18:16:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Friends]') AND type in (N'U'))
DROP TABLE [dbo].[Friends]
GO
/****** Object:  Table [dbo].[Dictionary]    Script Date: 2017/12/25 18:16:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Dictionary]') AND type in (N'U'))
DROP TABLE [dbo].[Dictionary]
GO
/****** Object:  StoredProcedure [dbo].[pSys_Register]    Script Date: 2017/12/25 18:16:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pSys_Register]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pSys_Register]
GO
/****** Object:  StoredProcedure [dbo].[pSys_LoginCheck]    Script Date: 2017/12/25 18:16:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pSys_LoginCheck]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pSys_LoginCheck]
GO
/****** Object:  StoredProcedure [dbo].[pSys_GetUserInfoByOpenId]    Script Date: 2017/12/25 18:16:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pSys_GetUserInfoByOpenId]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pSys_GetUserInfoByOpenId]
GO
/****** Object:  StoredProcedure [dbo].[pGroup_GetGroupsList]    Script Date: 2017/12/25 18:16:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pGroup_GetGroupsList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pGroup_GetGroupsList]
GO
/****** Object:  StoredProcedure [dbo].[pGroup_GetGroupMemberList]    Script Date: 2017/12/25 18:16:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pGroup_GetGroupMemberList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pGroup_GetGroupMemberList]
GO
/****** Object:  StoredProcedure [dbo].[pGroup_GetAllGroupsList]    Script Date: 2017/12/25 18:16:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pGroup_GetAllGroupsList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pGroup_GetAllGroupsList]
GO
/****** Object:  StoredProcedure [dbo].[pFriend_SeachUserInfoList]    Script Date: 2017/12/25 18:16:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pFriend_SeachUserInfoList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pFriend_SeachUserInfoList]
GO
/****** Object:  StoredProcedure [dbo].[pFriend_GetUnReadFriendsApplyCount]    Script Date: 2017/12/25 18:16:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pFriend_GetUnReadFriendsApplyCount]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pFriend_GetUnReadFriendsApplyCount]
GO
/****** Object:  StoredProcedure [dbo].[pFriend_GetGroupChatList_ForPage]    Script Date: 2017/12/25 18:16:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pFriend_GetGroupChatList_ForPage]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pFriend_GetGroupChatList_ForPage]
GO
/****** Object:  StoredProcedure [dbo].[pFriend_GetFriendsNewsList]    Script Date: 2017/12/25 18:16:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pFriend_GetFriendsNewsList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pFriend_GetFriendsNewsList]
GO
/****** Object:  StoredProcedure [dbo].[pFriend_GetFriendsList]    Script Date: 2017/12/25 18:16:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pFriend_GetFriendsList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pFriend_GetFriendsList]
GO
/****** Object:  StoredProcedure [dbo].[pFriend_GetFriendsChatList_ForPage]    Script Date: 2017/12/25 18:16:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pFriend_GetFriendsChatList_ForPage]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pFriend_GetFriendsChatList_ForPage]
GO
/****** Object:  StoredProcedure [dbo].[pFriend_GetFriendsApplyList]    Script Date: 2017/12/25 18:16:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pFriend_GetFriendsApplyList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pFriend_GetFriendsApplyList]
GO
/****** Object:  StoredProcedure [dbo].[pFriend_AuditFriendsApply]    Script Date: 2017/12/25 18:16:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pFriend_AuditFriendsApply]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pFriend_AuditFriendsApply]
GO
/****** Object:  StoredProcedure [dbo].[pFriend_AddGroupsChat]    Script Date: 2017/12/25 18:16:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pFriend_AddGroupsChat]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pFriend_AddGroupsChat]
GO
/****** Object:  StoredProcedure [dbo].[pFriend_AddFriendsChat]    Script Date: 2017/12/25 18:16:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pFriend_AddFriendsChat]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pFriend_AddFriendsChat]
GO
/****** Object:  StoredProcedure [dbo].[pFriend_AddFriendsApply]    Script Date: 2017/12/25 18:16:41 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pFriend_AddFriendsApply]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[pFriend_AddFriendsApply]
GO
/****** Object:  StoredProcedure [dbo].[pFriend_AddFriendsApply]    Script Date: 2017/12/25 18:16:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pFriend_AddFriendsApply]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
存储过程：pFriend_AddFriendsApply
存储说明：添加好友申请
时    间：20171016
作    者：ldw
*/

CREATE procedure [dbo].[pFriend_AddFriendsApply]
@Id uniqueidentifier, --主键Id
@ApplyerId uniqueidentifier, --发送者Id
@OwnerId uniqueidentifier, --接收者Id
@Remark varchar(100)  --发送内容
as

if exists(select Id from Friends_Apply where ApplyerId=@ApplyerId and OwnerId=@OwnerId and IsApply=''0'')
begin
  update Friends_Apply set IsDelete=0,UpdateId=@ApplyerId,UpdateTime=GETDATE(),IsRead=''0'' where ApplyerId=@ApplyerId and OwnerId=@OwnerId and IsApply=''0''
end
else
begin
	insert into Friends_Apply(Id,ApplyerId,OwnerId,Remark,IsApply,IsRead,CreateTime,CreateId,UpdateTime,UpdateId,IsDelete)
	values (@Id,@ApplyerId,@OwnerId,@Remark,''0'',''0'',GETDATE(),@ApplyerId,GETDATE(),@ApplyerId,0)
end

if(@@ERROR <>0)
begin
  select 0 as Code,''发送申请失败'' as Msg 
end
else
begin
  select 1 as Code,''发送申请成功'' as Msg 
end' 
END
GO
/****** Object:  StoredProcedure [dbo].[pFriend_AddFriendsChat]    Script Date: 2017/12/25 18:16:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pFriend_AddFriendsChat]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
存储过程：pFriend_AddFriendsChat
存储说明：添加聊天记录
时    间：20171016
作    者：ldw
*/

CREATE procedure [dbo].[pFriend_AddFriendsChat]
@Id uniqueidentifier, --主键Id
@SenderId uniqueidentifier, --发送者Id
@OwnerId uniqueidentifier, --接收者Id
@SendContent varchar(500) , --发送内容
@SendType varchar(2) --发送类型：0文本，1图片，2语音
as

declare @error int --错误数
set @error = 0

begin transaction

insert into Friends_Chat(Id,SenderId,OwnerId,SendContent,SendType,CreateTime,CreateId,UpdateTime,UpdateId,IsDelete)
values (@Id,@SenderId,@OwnerId,@SendContent,@SendType,GETDATE(),@SenderId,GETDATE(),@SenderId,0)
if @@ERROR <> 0 set @error =@error + 1

--更新自己的未读消息
if exists(select Id from Friends_News where SenderId=@OwnerId and OwnerId=@SenderId)
begin
  update Friends_News set SendContent=@SendContent,UnReadNum=0,UpdateId=@SenderId,IsDelete=0 where SenderId=@OwnerId and OwnerId=@SenderId
  if @@ERROR <> 0 set @error =@error + 1
end
else
begin
  insert into Friends_News(Id,SenderId,OwnerId,SendContent,UnReadNum,CreateTime,CreateId,UpdateTime,UpdateId,IsDelete)
  values (NEWID(),@OwnerId,@SenderId,@SendContent,0,GETDATE(),@SenderId,GETDATE(),@SenderId,0)
  if @@ERROR <> 0 set @error =@error + 1
end

--更新好友的未读消息
if exists(select Id from Friends_News where SenderId=@SenderId and OwnerId=@OwnerId)
begin
  update Friends_News set SendContent=@SendContent,UnReadNum=UnReadNum+1,UpdateId=@SenderId,IsDelete=0 where SenderId=@SenderId and OwnerId=@OwnerId
  if @@ERROR <> 0 set @error =@error + 1
end
else
begin
  insert into Friends_News(Id,SenderId,OwnerId,SendContent,UnReadNum,CreateTime,CreateId,UpdateTime,UpdateId,IsDelete)
  values (NEWID(),@SenderId,@OwnerId,@SendContent,1,GETDATE(),@SenderId,GETDATE(),@SenderId,0)
  if @@ERROR <> 0 set @error =@error + 1
end

if(@error <>0)
begin
  select 0 as Code,''发送失败'' as Msg 
  rollback transaction
end
else
begin
  select 1 as Code,''发送成功'' as Msg 
  commit transaction
end' 
END
GO
/****** Object:  StoredProcedure [dbo].[pFriend_AddGroupsChat]    Script Date: 2017/12/25 18:16:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pFriend_AddGroupsChat]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
存储过程：pFriend_AddGroupsChat
存储说明：添加群聊天记录
时    间：20171020
作    者：ldw
*/

CREATE procedure [dbo].[pFriend_AddGroupsChat]
@Id uniqueidentifier, --主键Id
@GroupId uniqueidentifier, --群Id
@SenderId uniqueidentifier, --发送者Id
@ReceiverId uniqueidentifier, --接收者Id
@SendContent varchar(500) , --发送内容
@SendType varchar(2) --发送类型：0文本，1图片，2语音
as

declare @error int --错误数
set @error = 0

begin transaction

insert into Friends_GroupChat(Id,GroupId,SenderId,ReceiverId,SendContent,SendType,CreateTime,CreateId,UpdateTime,UpdateId,IsDelete)
values (@Id,@GroupId,@SenderId,@ReceiverId,@SendContent,@SendType,GETDATE(),@SenderId,GETDATE(),@SenderId,0)
if @@ERROR <> 0 set @error =@error + 1



if(@error <>0)
begin
  select 0 as Code,''发送失败'' as Msg 
  rollback transaction
end
else
begin
  select 1 as Code,''发送成功'' as Msg 
  commit transaction
end' 
END
GO
/****** Object:  StoredProcedure [dbo].[pFriend_AuditFriendsApply]    Script Date: 2017/12/25 18:16:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pFriend_AuditFriendsApply]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
存储过程：pFriend_AuditFriendsApply
存储说明：审核好友申请
时    间：20171016
作    者：ldw
*/

CREATE procedure [dbo].[pFriend_AuditFriendsApply]
@Id uniqueidentifier, --好友申请主键Id
@State int  --审核状态:-1删除,0拒绝，1同意
as

declare @error int --错误数
set @error = 0
declare @ApplyerId uniqueidentifier --申请者
declare @OwnerId uniqueidentifier --接收者

begin transaction

if(@State = -1)
begin
  update Friends_Apply set IsDelete=1 where Id=@Id
  if @@ERROR<>0 set @error = @error+1
end
else if(@State = 0)
begin
  update Friends_Apply set IsApply=''2'' where Id=@Id
  if @@ERROR<>0 set @error = @error+1
end
else if(@State = 1)
begin
  update Friends_Apply set IsApply=''1'' where Id=@Id
  if @@ERROR<>0 set @error = @error+1

  select @ApplyerId=ApplyerId,@OwnerId=OwnerId from Friends_Apply where Id=@Id

  if exists(select Id from Friends where OwnerId=@ApplyerId and FriendId=@OwnerId)
  begin
     update Friends set State=''1'',IsDelete=0,UpdateTime=GETDATE() where OwnerId=@ApplyerId and FriendId=@OwnerId
	 if @@ERROR<>0 set @error = @error+1
  end
  else
  begin
    insert into Friends (Id,FriendId,OwnerId,State,CreateTime,CreateId,UpdateTime,UpdateId,IsDelete)
	values (NEWID(),@OwnerId,@ApplyerId,''1'',GETDATE(),@OwnerId,GETDATE(),@OwnerId,0)
	if @@ERROR<>0 set @error = @error+1
  end

  if exists(select Id from Friends where OwnerId=@OwnerId and FriendId=@ApplyerId)
  begin
     update Friends set State=''1'',IsDelete=0,UpdateTime=GETDATE() where OwnerId=@OwnerId and FriendId=@ApplyerId
	 if @@ERROR<>0 set @error = @error+1
  end
  else
  begin
    insert into Friends (Id,FriendId,OwnerId,State,CreateTime,CreateId,UpdateTime,UpdateId,IsDelete)
	values (NEWID(),@ApplyerId,@OwnerId,''1'',GETDATE(),@ApplyerId,GETDATE(),@ApplyerId,0)
	if @@ERROR<>0 set @error = @error+1
  end
end

if(@error <>0)
begin
  select 0 as Code,''操作失败,请重试'' as Msg
  rollback transaction
end
else
begin
  select 1 as Code,''操作成功'' as Msg
  commit transaction
end

' 
END
GO
/****** Object:  StoredProcedure [dbo].[pFriend_GetFriendsApplyList]    Script Date: 2017/12/25 18:16:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pFriend_GetFriendsApplyList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
存储过程：pFriend_GetFriendsApplyList
存储说明：获取好友申请列表
时    间：20171017
作    者：ldw
*/

CREATE procedure [dbo].[pFriend_GetFriendsApplyList]
@UserId uniqueidentifier --用户Id
as

update Friends_Apply set IsRead=''1'' where IsRead=''0'' and OwnerId=@UserId and IsDelete=0

select a.Id,ApplyerId,Remark,IsApply,a.UpdateTime,b.Account,b.HeadPicture 
from Friends_Apply as a
left join UserInfo as b on  b.Id=a.ApplyerId
where OwnerId=@UserId and a.IsDelete=0 order by UpdateTime desc' 
END
GO
/****** Object:  StoredProcedure [dbo].[pFriend_GetFriendsChatList_ForPage]    Script Date: 2017/12/25 18:16:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pFriend_GetFriendsChatList_ForPage]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
存储过程：pFriend_GetFriendsChatList_ForPage
存储说明：获取和好友的聊天记录-分页
时    间：20171016
作    者：ldw
*/

CREATE procedure [dbo].[pFriend_GetFriendsChatList_ForPage]
@UserId uniqueidentifier, --当前用户Id
@FriendId uniqueidentifier, --好友用户Id
@Page int , --页码索引
@PageSize int --每页记录数
as


--更新自己的未读消息
if exists(select Id from Friends_News where SenderId=@FriendId and OwnerId=@UserId)
begin
  update Friends_News set UnReadNum=0,UpdateId=@UserId,IsDelete=0 where SenderId=@FriendId and OwnerId=@UserId
end


declare @TotalPages int --总页码数
declare @TotalItems int --总记录数
declare @Remainder int --最后一页的条数

--获取聊天总记录数
select @TotalItems=COUNT(Id) from Friends_Chat where ((SenderId=@UserId and OwnerId=@FriendId) or (SenderId=@FriendId and OwnerId=@UserId)) and IsDelete=0
--计算出总页码数
set @TotalPages = CEILING( cast(@TotalItems as decimal(18,2)) / cast(@PageSize as decimal(18,2)) )
--计算余数
set @Remainder = @TotalItems % @PageSize
--如果未到最后一页
if(@Page < @TotalPages)
begin
  set @Remainder = @PageSize
end


select @TotalPages as TotalPages,@TotalItems as TotalItems,a.Id,SenderId,OwnerId,SendContent,SendType,a.UpdateTime,
b.UserName as SenderName,b.HeadPicture as SenderHeadPic,
(case when SenderId=@UserId and OwnerId=@FriendId then 1 when SenderId=@FriendId and OwnerId=@UserId then 0 end)as IsOwner 
from Friends_Chat as a
left join UserInfo as b on b.Id=a.SenderId,
(
  select top (@Remainder) m.Id from 
  (
	  select top (@Page*@PageSize) Id,UpdateTime from Friends_Chat where ((SenderId=@UserId and OwnerId=@FriendId) or (SenderId=@FriendId and OwnerId=@UserId)) and IsDelete=0 order by UpdateTime desc
   )as m order by m.UpdateTime asc
)as n 
where a.Id=n.Id order by a.UpdateTime desc


--只适用于高于2008版本的sql server
--select @TotalPages as TotalPages,@TotalItems as TotalItems,a.Id,SenderId,OwnerId,SendContent,SendType,a.UpdateTime,
--b.UserName as SenderName,b.HeadPicture as SenderHeadPic,c.UserName as ReceiverName,c.HeadPicture as ReceiverHeadPic,
--(case when SenderId=@UserId and OwnerId=@FriendId then 1 when SenderId=@FriendId and OwnerId=@UserId then 0 end)as IsOwner
--from Friends_Chat as a 
--left join UserInfo as b on b.Id=a.SenderId
--left join UserInfo as c on c.Id=a.OwnerId
--where ((SenderId=@UserId and OwnerId=@FriendId) or (SenderId=@FriendId and OwnerId=@UserId)) and a.IsDelete=0 order by a.UpdateTime desc
--offset @PageSize * (@Page -1) rows fetch next @PageSize rows only

' 
END
GO
/****** Object:  StoredProcedure [dbo].[pFriend_GetFriendsList]    Script Date: 2017/12/25 18:16:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pFriend_GetFriendsList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
存储过程：pFriend_GetFriendsList
存储说明：获取好友列表
时    间：20171012
作    者：ldw
*/

CREATE procedure [dbo].[pFriend_GetFriendsList]
@UserId uniqueidentifier --用户Id
as

select a.Id,FriendId,Remark,a.State,b.Account,b.HeadPicture,0 as IsOnline,ISNULL(c.UnReadNum,0)as UnReadNum
from Friends as a 
left join UserInfo as b on b.Id=a.FriendId
left join Friends_News as c on c.OwnerId=@UserId and c.SenderId=a.FriendId
where a.OwnerId=@UserId and a.IsDelete=0 order by a.CreateTime asc
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pFriend_GetFriendsNewsList]    Script Date: 2017/12/25 18:16:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pFriend_GetFriendsNewsList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
存储过程：pFriend_GetFriendsNewsList
存储说明：获取最近聊天记录-最新50条
时    间：20171018
作    者：ldw
*/

CREATE procedure [dbo].[pFriend_GetFriendsNewsList]
@UserId uniqueidentifier --用户Id
as

select top 50 a.Id,a.SenderId as FriendId,a.SendContent,a.UnReadNum,a.UpdateTime,c.HeadPicture,ISNULL(b.Remark,c.Account)as Remark,ISNULL(b.State,''0'')as State,0 as IsOnline,
(case when b.Id is null then 0 else 1 end)as IsFriend
from Friends_News as a 
left join Friends as b on b.OwnerId=@UserId and FriendId=a.SenderId and b.IsDelete=0
left join UserInfo as c on c.Id=a.SenderId
where a.OwnerId=@UserId and a.IsDelete=0

--select a.Id,FriendId,Remark,a.State,b.UserName,b.HeadPicture,0 as IsOnline,ISNULL(c.UnReadNum,0)as UnReadNum
--from Friends as a 
--left join UserInfo as b on b.Id=a.FriendId
--left join Friends_News as c on c.OwnerId=@UserId and c.SenderId=a.FriendId
--where a.OwnerId=@UserId and a.IsDelete=0 order by a.CreateTime asc
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pFriend_GetGroupChatList_ForPage]    Script Date: 2017/12/25 18:16:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pFriend_GetGroupChatList_ForPage]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
存储过程：pFriend_GetGroupChatList_ForPage
存储说明：获取群聊天记录-分页
时    间：20171020
作    者：ldw
*/

CREATE procedure [dbo].[pFriend_GetGroupChatList_ForPage]
@UserId uniqueidentifier, --当前用户Id
@GroupId uniqueidentifier, --群Id
@Page int , --页码索引
@PageSize int --每页记录数
as


--更新自己的未读消息
if exists(select Id from Friends_GroupNews where GroupId=@GroupId and OwnerId=@UserId)
begin
  update Friends_GroupNews set UnReadNum=0,UpdateId=@UserId,IsDelete=0 where GroupId=@GroupId and OwnerId=@UserId
end


declare @TotalPages int --总页码数
declare @TotalItems int --总记录数
declare @Remainder int --最后一页的条数

--获取聊天总记录数
select @TotalItems=COUNT(Id) from Friends_GroupChat where GroupId=@GroupId and IsDelete=0
--计算出总页码数
set @TotalPages = CEILING( cast(@TotalItems as decimal(18,2)) / cast(@PageSize as decimal(18,2)) )
--计算余数
set @Remainder = @TotalItems % @PageSize
--如果未到最后一页
if(@Page < @TotalPages)
begin
  set @Remainder = @PageSize
end


select @TotalPages as TotalPages,@TotalItems as TotalItems,a.Id,SenderId,SendContent,SendType,a.UpdateTime,
b.UserName as SenderName,b.HeadPicture as SenderHeadPic,
(case when SenderId=@UserId then 1 else 0 end)as IsOwner
from Friends_GroupChat as a
left join UserInfo as b on b.Id=a.SenderId,
(
  select top (@Remainder) m.Id from 
  (
	  select top (@Page*@PageSize) Id,UpdateTime from Friends_GroupChat where GroupId=@GroupId and IsDelete=0 order by UpdateTime desc
   )as m order by m.UpdateTime asc
)as n 
where a.Id=n.Id order by a.UpdateTime desc


' 
END
GO
/****** Object:  StoredProcedure [dbo].[pFriend_GetUnReadFriendsApplyCount]    Script Date: 2017/12/25 18:16:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pFriend_GetUnReadFriendsApplyCount]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
存储过程：pFriend_GetUnReadFriendsApplyCount
存储说明：获取未读好友申请个数
时    间：20171017
作    者：ldw
*/

CREATE procedure [dbo].[pFriend_GetUnReadFriendsApplyCount]
@UserId uniqueidentifier --用户Id
as

select COUNT(Id) as UnReadFriendApplyNum,1 as Code from Friends_Apply as a where OwnerId=@UserId and a.IsDelete=0 and IsRead=''0'' ' 
END
GO
/****** Object:  StoredProcedure [dbo].[pFriend_SeachUserInfoList]    Script Date: 2017/12/25 18:16:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pFriend_SeachUserInfoList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
存储过程：pFriend_SeachUserInfoList
存储说明：查询用户
时    间：20171016
作    者：ldw
*/

CREATE procedure [dbo].[pFriend_SeachUserInfoList]
@UserId uniqueidentifier, --当前用户Id
@SeachKey varchar(50) --查询关键词
as

select a.Id,a.No,UserName,Account,HeadPicture,ISNULL(b.Remark,'''') as Remark,
(case when b.Id is null then 0 else 1 end)as IsFriend
from UserInfo as a 
left join Friends as b on b.OwnerId=@UserId and b.FriendId=a.Id and b.IsDelete=0
where (CAST(a.No as varchar(10)) like ''%''+@SeachKey+''%'' or a.Account like ''%''+@SeachKey+''%'' or b.Remark like ''%''+@SeachKey+''%'') and a.IsDelete=0 and a.State=''0''
' 
END
GO
/****** Object:  StoredProcedure [dbo].[pGroup_GetAllGroupsList]    Script Date: 2017/12/25 18:16:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pGroup_GetAllGroupsList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
存储过程：pGroup_GetAllGroupsList
存储说明：获取所有群列表
时    间：20171020
作    者：ldw
*/

CREATE procedure [dbo].[pGroup_GetAllGroupsList]
as

select Id as GroupId,GroupName from Friends_Group where State=''0'' and IsDelete=0 order by CreateTime desc' 
END
GO
/****** Object:  StoredProcedure [dbo].[pGroup_GetGroupMemberList]    Script Date: 2017/12/25 18:16:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pGroup_GetGroupMemberList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
存储过程：pGroup_GetGroupMemberList
存储说明：获取群成员列表
时    间：20171020
作    者：ldw
*/

CREATE procedure [dbo].[pGroup_GetGroupMemberList]
@GroupId uniqueidentifier, --群Id
@UserId uniqueidentifier --用户Id
as

select a.Id,b.Id as FriendId,b.HeadPicture,b.Account,ISNULL(c.Remark,'''')as Remark
from Friends_GroupMember as a 
left join UserInfo as b on b.Id=a.GroupMemberId
left join Friends as c on c.FriendId=a.GroupMemberId and c.OwnerId=@UserId and c.IsDelete=0
where a.GroupId =@GroupId and a.IsDelete=0 order by a.CreateTime asc

' 
END
GO
/****** Object:  StoredProcedure [dbo].[pGroup_GetGroupsList]    Script Date: 2017/12/25 18:16:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pGroup_GetGroupsList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
存储过程：pGroup_GetGroupsList
存储说明：获取我的群列表
时    间：20171020
作    者：ldw
*/

CREATE procedure [dbo].[pGroup_GetGroupsList]
@UserId uniqueidentifier --当前用户Id
as

select b.Id,b.GroupName,b.OwnerId,ISNULL(c.UnReadNum,0)as UnReadNum,
(case when b.OwnerId=@UserId then 1 else 0 end)as IsOwner
from Friends_GroupMember as a 
inner join Friends_Group as b on b.Id=a.GroupId and b.State=''0'' and b.IsDelete=0
left join Friends_GroupNews as c on c.GroupId=a.GroupId and c.OwnerId=@UserId
where a.GroupMemberId=@UserId and a.IsDelete=0 order by b.CreateTime asc' 
END
GO
/****** Object:  StoredProcedure [dbo].[pSys_GetUserInfoByOpenId]    Script Date: 2017/12/25 18:16:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pSys_GetUserInfoByOpenId]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
存储过程：pSys_GetUserInfoByOpenId
存储说明：通过QQOpenId获取用户信息
时    间：20171225
作    者：ldw
*/

CREATE procedure [dbo].[pSys_GetUserInfoByOpenId]
@OpenId varchar(50) --用户Id
as

select Id,UserName,Account,HeadPicture,Sex from UserInfo where QQOpenId=@OpenId

' 
END
GO
/****** Object:  StoredProcedure [dbo].[pSys_LoginCheck]    Script Date: 2017/12/25 18:16:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pSys_LoginCheck]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
存储过程：pSys_LoginCheck
存储说明：登陆验证
时    间：20171011
作    者：ldw
*/

CREATE procedure [dbo].[pSys_LoginCheck]
@account VarChar(50), --账号
@pswd VarChar(50) --密码
as

declare @Psd VarChar(50)
declare @State varchar(2) 

--查询该账号信息
select @Psd=Pasword,@State=State from UserInfo where Account=@account

if(@Psd is null)
begin
  select 0 as Code,''账号不存在'' as Msg
  return
end
else if(@State = ''1'')
begin
  select 0 as Code,''账号已被冻结'' as Msg
  return
end
else if(@pswd <> @pswd)
begin
  select 0 as Code,''密码错误'' as Msg
  return
end

select Id,UserName,Account,HeadPicture,Sex from UserInfo where Account=@account' 
END
GO
/****** Object:  StoredProcedure [dbo].[pSys_Register]    Script Date: 2017/12/25 18:16:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[pSys_Register]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'/*
存储过程：pSys_Register
存储说明：注册
时    间：20171011
作    者：ldw
*/

CREATE procedure [dbo].[pSys_Register]
@Id uniqueidentifier, --用户Id
@account VarChar(50), --账号
@UserName VarChar(50), --用户名
@pswd VarChar(50), --密码
@HeadPicture varchar(500), --头像路径
@OpenId varchar(50)  --QQ或微信OpenId
as

if exists(select Id from UserInfo where Account=@account)
begin
   select 0 as Code,''账号名已存在'' as Msg
   return
end

insert into UserInfo(Id,UserName,Account,Pasword,HeadPicture,QQOpenId,Sex,State,CreateTime,CreateId,UpdateTime,UpdateId,IsDelete)
values (@Id,@UserName,@account,@pswd,@HeadPicture,@OpenId,''2'',''0'',GETDATE(),@Id,GETDATE(),@Id,0)
if(@@ERROR <> 0) 
begin
   select 0 as Code,''注册失败,请重试'' as Msg 
end
else
begin
   select 1 as Code,''注册成功'' as Msg 
end

' 
END
GO
/****** Object:  Table [dbo].[Dictionary]    Script Date: 2017/12/25 18:16:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Dictionary]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Dictionary](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [varchar](10) NULL,
	[Name] [varchar](20) NULL,
	[Bond] [varchar](5) NULL,
	[Value] [varchar](20) NULL,
 CONSTRAINT [PK_Dictionary] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Friends]    Script Date: 2017/12/25 18:16:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Friends]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Friends](
	[Id] [uniqueidentifier] NOT NULL,
	[FriendId] [uniqueidentifier] NULL,
	[OwnerId] [uniqueidentifier] NULL,
	[Remark] [varchar](50) NULL,
	[State] [varchar](2) NULL,
	[CreateTime] [datetime] NULL,
	[CreateId] [uniqueidentifier] NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateId] [uniqueidentifier] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Friends] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Friends_Apply]    Script Date: 2017/12/25 18:16:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Friends_Apply]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Friends_Apply](
	[Id] [uniqueidentifier] NOT NULL,
	[ApplyerId] [uniqueidentifier] NULL,
	[OwnerId] [uniqueidentifier] NULL,
	[Remark] [varchar](50) NULL,
	[IsApply] [varchar](2) NULL,
	[IsRead] [varchar](2) NULL,
	[CreateTime] [datetime] NULL,
	[CreateId] [uniqueidentifier] NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateId] [uniqueidentifier] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Friends_Apply] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Friends_Chat]    Script Date: 2017/12/25 18:16:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Friends_Chat]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Friends_Chat](
	[Id] [uniqueidentifier] NOT NULL,
	[SenderId] [uniqueidentifier] NULL,
	[OwnerId] [uniqueidentifier] NULL,
	[SendContent] [varchar](500) NULL,
	[SendType] [varchar](2) NULL,
	[CreateTime] [datetime] NULL,
	[CreateId] [uniqueidentifier] NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateId] [uniqueidentifier] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Friends_Chat] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Friends_Group]    Script Date: 2017/12/25 18:16:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Friends_Group]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Friends_Group](
	[Id] [uniqueidentifier] NOT NULL,
	[GroupName] [varchar](50) NULL,
	[OwnerId] [uniqueidentifier] NULL,
	[State] [varchar](2) NULL,
	[CreateTime] [datetime] NULL,
	[CreateId] [uniqueidentifier] NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateId] [uniqueidentifier] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Friends_Group] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Friends_GroupChat]    Script Date: 2017/12/25 18:16:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Friends_GroupChat]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Friends_GroupChat](
	[Id] [uniqueidentifier] NOT NULL,
	[GroupId] [uniqueidentifier] NULL,
	[SenderId] [uniqueidentifier] NULL,
	[ReceiverId] [uniqueidentifier] NULL,
	[SendContent] [varchar](500) NULL,
	[SendType] [varchar](2) NULL,
	[CreateTime] [datetime] NULL,
	[CreateId] [uniqueidentifier] NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateId] [uniqueidentifier] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Friends_GroupChat] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Friends_GroupMember]    Script Date: 2017/12/25 18:16:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Friends_GroupMember]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Friends_GroupMember](
	[Id] [uniqueidentifier] NOT NULL,
	[GroupId] [uniqueidentifier] NULL,
	[GroupMemberId] [uniqueidentifier] NULL,
	[GroupMemberName] [varchar](50) NULL,
	[CreateTime] [datetime] NULL,
	[CreateId] [uniqueidentifier] NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateId] [uniqueidentifier] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Friend_GroupMember] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Friends_GroupNews]    Script Date: 2017/12/25 18:16:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Friends_GroupNews]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Friends_GroupNews](
	[Id] [uniqueidentifier] NOT NULL,
	[GroupId] [uniqueidentifier] NULL,
	[SenderId] [uniqueidentifier] NULL,
	[OwnerId] [uniqueidentifier] NULL,
	[SendContent] [varchar](500) NULL,
	[UnReadNum] [int] NULL,
	[CreateTime] [datetime] NULL,
	[CreateId] [uniqueidentifier] NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateId] [uniqueidentifier] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Friends_GroupNews] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Friends_News]    Script Date: 2017/12/25 18:16:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Friends_News]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Friends_News](
	[Id] [uniqueidentifier] NOT NULL,
	[SenderId] [uniqueidentifier] NULL,
	[OwnerId] [uniqueidentifier] NULL,
	[SendContent] [varchar](500) NULL,
	[UnReadNum] [int] NULL,
	[CreateTime] [datetime] NULL,
	[CreateId] [uniqueidentifier] NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateId] [uniqueidentifier] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_Friend_News] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[UserInfo]    Script Date: 2017/12/25 18:16:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[UserInfo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[UserInfo](
	[Id] [uniqueidentifier] NOT NULL,
	[No] [int] IDENTITY(10000,1) NOT NULL,
	[UserName] [varchar](20) NULL,
	[Account] [varchar](20) NULL,
	[Pasword] [varchar](50) NULL,
	[HeadPicture] [varchar](500) NULL,
	[Sex] [varchar](2) NULL,
	[State] [varchar](2) NULL,
	[QQOpenId] [varchar](50) NULL,
	[CreateTime] [datetime] NULL,
	[CreateId] [uniqueidentifier] NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateId] [uniqueidentifier] NULL,
	[IsDelete] [bit] NULL,
 CONSTRAINT [PK_UserInfo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Dictionary] ON 

INSERT [dbo].[Dictionary] ([ID], [Code], [Name], [Bond], [Value]) VALUES (1, N'001', N'考勤状态', N'0', N'正常')
INSERT [dbo].[Dictionary] ([ID], [Code], [Name], [Bond], [Value]) VALUES (2, N'001', N'考勤状态', N'1', N'迟到')
INSERT [dbo].[Dictionary] ([ID], [Code], [Name], [Bond], [Value]) VALUES (3, N'001', N'考勤状态', N'2', N'早退')
INSERT [dbo].[Dictionary] ([ID], [Code], [Name], [Bond], [Value]) VALUES (4, N'001', N'考勤状态', N'3', N'旷工')
INSERT [dbo].[Dictionary] ([ID], [Code], [Name], [Bond], [Value]) VALUES (5, N'001', N'考勤状态', N'4', N'未签到')
INSERT [dbo].[Dictionary] ([ID], [Code], [Name], [Bond], [Value]) VALUES (6, N'001', N'考勤状态', N'5', N'未签退')
INSERT [dbo].[Dictionary] ([ID], [Code], [Name], [Bond], [Value]) VALUES (7, N'001', N'考勤状态', N'6', N'加班')
INSERT [dbo].[Dictionary] ([ID], [Code], [Name], [Bond], [Value]) VALUES (8, N'001', N'考勤状态', N'7', N'请假')
SET IDENTITY_INSERT [dbo].[Dictionary] OFF
INSERT [dbo].[Friends] ([Id], [FriendId], [OwnerId], [Remark], [State], [CreateTime], [CreateId], [UpdateTime], [UpdateId], [IsDelete]) VALUES (N'5ede36b9-fa9a-459e-82ea-826b6521abbf', N'2c4ff9ca-94fe-4c50-aa48-ecf33a3fe219', N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', NULL, N'1', CAST(0x0000A8110096E42C AS DateTime), N'2c4ff9ca-94fe-4c50-aa48-ecf33a3fe219', CAST(0x0000A8110096E42C AS DateTime), N'2c4ff9ca-94fe-4c50-aa48-ecf33a3fe219', 0)
INSERT [dbo].[Friends] ([Id], [FriendId], [OwnerId], [Remark], [State], [CreateTime], [CreateId], [UpdateTime], [UpdateId], [IsDelete]) VALUES (N'8d738a56-f179-46d9-a8d4-9d844aa6f2aa', N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', N'be7cd51d-2a7b-4cb4-80f7-f40952abe90e', NULL, N'1', CAST(0x0000A8110096F178 AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', CAST(0x0000A8110096F178 AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', 0)
INSERT [dbo].[Friends] ([Id], [FriendId], [OwnerId], [Remark], [State], [CreateTime], [CreateId], [UpdateTime], [UpdateId], [IsDelete]) VALUES (N'99ac87af-7933-4b15-be18-a9afec64b901', N'be7cd51d-2a7b-4cb4-80f7-f40952abe90e', N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', NULL, N'1', CAST(0x0000A8110096F178 AS DateTime), N'be7cd51d-2a7b-4cb4-80f7-f40952abe90e', CAST(0x0000A8110096F178 AS DateTime), N'be7cd51d-2a7b-4cb4-80f7-f40952abe90e', 0)
INSERT [dbo].[Friends] ([Id], [FriendId], [OwnerId], [Remark], [State], [CreateTime], [CreateId], [UpdateTime], [UpdateId], [IsDelete]) VALUES (N'0279032c-ee2b-4bc7-bbe6-aa5a20d096c3', N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', N'0ce8975c-2e78-40ed-ba4d-01efd36bc451', NULL, N'1', CAST(0x0000A81100970DB7 AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', CAST(0x0000A81100970DB7 AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', 0)
INSERT [dbo].[Friends] ([Id], [FriendId], [OwnerId], [Remark], [State], [CreateTime], [CreateId], [UpdateTime], [UpdateId], [IsDelete]) VALUES (N'1b9e6491-0531-407c-a49e-ef3d7f74d34a', N'0ce8975c-2e78-40ed-ba4d-01efd36bc451', N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', NULL, N'1', CAST(0x0000A81100970DB7 AS DateTime), N'0ce8975c-2e78-40ed-ba4d-01efd36bc451', CAST(0x0000A81100970DB7 AS DateTime), N'0ce8975c-2e78-40ed-ba4d-01efd36bc451', 0)
INSERT [dbo].[Friends] ([Id], [FriendId], [OwnerId], [Remark], [State], [CreateTime], [CreateId], [UpdateTime], [UpdateId], [IsDelete]) VALUES (N'c919ab51-885b-499b-a095-fd0cad889018', N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', N'2c4ff9ca-94fe-4c50-aa48-ecf33a3fe219', NULL, N'1', CAST(0x0000A8110096E42C AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', CAST(0x0000A8110096E42C AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', 0)
INSERT [dbo].[Friends_Apply] ([Id], [ApplyerId], [OwnerId], [Remark], [IsApply], [IsRead], [CreateTime], [CreateId], [UpdateTime], [UpdateId], [IsDelete]) VALUES (N'a7e18605-d9bf-4cf9-a0f2-0603bf8ffe6b', N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', N'be7cd51d-2a7b-4cb4-80f7-f40952abe90e', NULL, N'1', N'1', CAST(0x0000A8110096CC31 AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', CAST(0x0000A8110096CC31 AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', 0)
INSERT [dbo].[Friends_Apply] ([Id], [ApplyerId], [OwnerId], [Remark], [IsApply], [IsRead], [CreateTime], [CreateId], [UpdateTime], [UpdateId], [IsDelete]) VALUES (N'cdbdf5c5-1f91-4ea1-b1fb-0766f2410b5e', N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', NULL, N'0', N'0', CAST(0x0000A854011BDF85 AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', CAST(0x0000A854011BDF85 AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', 0)
INSERT [dbo].[Friends_Apply] ([Id], [ApplyerId], [OwnerId], [Remark], [IsApply], [IsRead], [CreateTime], [CreateId], [UpdateTime], [UpdateId], [IsDelete]) VALUES (N'4f3cad74-79b3-4e64-8fd3-3efa36bf9bba', N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', N'0ce8975c-2e78-40ed-ba4d-01efd36bc451', NULL, N'1', N'1', CAST(0x0000A8110096CDE9 AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', CAST(0x0000A8110096CDE9 AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', 0)
INSERT [dbo].[Friends_Apply] ([Id], [ApplyerId], [OwnerId], [Remark], [IsApply], [IsRead], [CreateTime], [CreateId], [UpdateTime], [UpdateId], [IsDelete]) VALUES (N'403f800e-714c-4ba0-a153-a6ad827bd87b', N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', NULL, N'2', N'1', CAST(0x0000A812011255A1 AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', CAST(0x0000A812011255A1 AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', 0)
INSERT [dbo].[Friends_Apply] ([Id], [ApplyerId], [OwnerId], [Remark], [IsApply], [IsRead], [CreateTime], [CreateId], [UpdateTime], [UpdateId], [IsDelete]) VALUES (N'baac32d4-309b-417b-89ca-c5c29c509561', N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', N'2c4ff9ca-94fe-4c50-aa48-ecf33a3fe219', NULL, N'1', N'1', CAST(0x0000A8110096C328 AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', CAST(0x0000A8110096C328 AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', 0)
INSERT [dbo].[Friends_Chat] ([Id], [SenderId], [OwnerId], [SendContent], [SendType], [CreateTime], [CreateId], [UpdateTime], [UpdateId], [IsDelete]) VALUES (N'a92638dd-93c2-49b6-b869-01b0b8afb08f', N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', N'be7cd51d-2a7b-4cb4-80f7-f40952abe90e', N'你好', N'0', CAST(0x0000A81201095045 AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', CAST(0x0000A81201095045 AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', 0)
INSERT [dbo].[Friends_Chat] ([Id], [SenderId], [OwnerId], [SendContent], [SendType], [CreateTime], [CreateId], [UpdateTime], [UpdateId], [IsDelete]) VALUES (N'a5f9d6ba-d44b-4bfb-b8fe-353d18a085fa', N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', N'be7cd51d-2a7b-4cb4-80f7-f40952abe90e', N'你是谁', N'0', CAST(0x0000A81201146E29 AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', CAST(0x0000A81201146E29 AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', 0)
INSERT [dbo].[Friends_Chat] ([Id], [SenderId], [OwnerId], [SendContent], [SendType], [CreateTime], [CreateId], [UpdateTime], [UpdateId], [IsDelete]) VALUES (N'478a417a-f3ee-4ae7-a23e-4170912a641b', N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', N'2c4ff9ca-94fe-4c50-aa48-ecf33a3fe219', N'123', N'0', CAST(0x0000A8120107DA15 AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', CAST(0x0000A8120107DA15 AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', 0)
INSERT [dbo].[Friends_Group] ([Id], [GroupName], [OwnerId], [State], [CreateTime], [CreateId], [UpdateTime], [UpdateId], [IsDelete]) VALUES (N'fa8428a3-9f15-4e04-a1de-3595e16e2781', N'群三', N'2c4ff9ca-94fe-4c50-aa48-ecf33a3fe219', N'0', CAST(0x0000A81200E6A128 AS DateTime), N'2c4ff9ca-94fe-4c50-aa48-ecf33a3fe219', CAST(0x0000A81200E6A128 AS DateTime), N'2c4ff9ca-94fe-4c50-aa48-ecf33a3fe219', 0)
INSERT [dbo].[Friends_Group] ([Id], [GroupName], [OwnerId], [State], [CreateTime], [CreateId], [UpdateTime], [UpdateId], [IsDelete]) VALUES (N'5261caaf-5e0d-477f-85bf-78349b0944e0', N'群二', N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', N'0', CAST(0x0000A81200E6821A AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', CAST(0x0000A81200E6821A AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', 0)
INSERT [dbo].[Friends_Group] ([Id], [GroupName], [OwnerId], [State], [CreateTime], [CreateId], [UpdateTime], [UpdateId], [IsDelete]) VALUES (N'cbb84e6f-600f-4738-810c-c05d43af2131', N'群一', N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', N'0', CAST(0x0000A81200E669EE AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', CAST(0x0000A81200E669EE AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', 0)
INSERT [dbo].[Friends_GroupChat] ([Id], [GroupId], [SenderId], [ReceiverId], [SendContent], [SendType], [CreateTime], [CreateId], [UpdateTime], [UpdateId], [IsDelete]) VALUES (N'0c6ac7ff-dd54-409d-a5ea-37efa48b4d97', N'cbb84e6f-600f-4738-810c-c05d43af2131', N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', NULL, N'123', N'0', CAST(0x0000A812011E5C90 AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', CAST(0x0000A812011E5C90 AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', 0)
INSERT [dbo].[Friends_GroupChat] ([Id], [GroupId], [SenderId], [ReceiverId], [SendContent], [SendType], [CreateTime], [CreateId], [UpdateTime], [UpdateId], [IsDelete]) VALUES (N'dc0137ea-2c22-4cfc-b02a-62aa707a2af3', N'cbb84e6f-600f-4738-810c-c05d43af2131', N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', NULL, N'652', N'0', CAST(0x0000A812011EA372 AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', CAST(0x0000A812011EA372 AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', 0)
INSERT [dbo].[Friends_GroupChat] ([Id], [GroupId], [SenderId], [ReceiverId], [SendContent], [SendType], [CreateTime], [CreateId], [UpdateTime], [UpdateId], [IsDelete]) VALUES (N'88865821-93c3-4ae0-8bd5-cbf0103f0adb', N'cbb84e6f-600f-4738-810c-c05d43af2131', N'2c4ff9ca-94fe-4c50-aa48-ecf33a3fe219', NULL, N'asd', N'0', CAST(0x0000A81201246F65 AS DateTime), N'2c4ff9ca-94fe-4c50-aa48-ecf33a3fe219', CAST(0x0000A81201246F65 AS DateTime), N'2c4ff9ca-94fe-4c50-aa48-ecf33a3fe219', 0)
INSERT [dbo].[Friends_GroupMember] ([Id], [GroupId], [GroupMemberId], [GroupMemberName], [CreateTime], [CreateId], [UpdateTime], [UpdateId], [IsDelete]) VALUES (N'efa61c71-141f-4078-aaec-00a60a6eafcd', N'fa8428a3-9f15-4e04-a1de-3595e16e2781', N'2c4ff9ca-94fe-4c50-aa48-ecf33a3fe219', N'15960380362', CAST(0x0000A81200E7FDC4 AS DateTime), N'2c4ff9ca-94fe-4c50-aa48-ecf33a3fe219', CAST(0x0000A81200E7FDC4 AS DateTime), N'2c4ff9ca-94fe-4c50-aa48-ecf33a3fe219', 0)
INSERT [dbo].[Friends_GroupMember] ([Id], [GroupId], [GroupMemberId], [GroupMemberName], [CreateTime], [CreateId], [UpdateTime], [UpdateId], [IsDelete]) VALUES (N'9ddcfe28-0b74-4e3d-b041-18889322416f', N'5261caaf-5e0d-477f-85bf-78349b0944e0', N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', N'15960380361', CAST(0x0000A81200E7AA65 AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', CAST(0x0000A81200E7AA65 AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', 0)
INSERT [dbo].[Friends_GroupMember] ([Id], [GroupId], [GroupMemberId], [GroupMemberName], [CreateTime], [CreateId], [UpdateTime], [UpdateId], [IsDelete]) VALUES (N'd326bdfc-45ba-4f98-bba6-2d2a33b94b32', N'fa8428a3-9f15-4e04-a1de-3595e16e2781', N'0ce8975c-2e78-40ed-ba4d-01efd36bc451', N'15960380364', CAST(0x0000A81200E87B8F AS DateTime), N'2c4ff9ca-94fe-4c50-aa48-ecf33a3fe219', CAST(0x0000A81200E87B8F AS DateTime), N'2c4ff9ca-94fe-4c50-aa48-ecf33a3fe219', 0)
INSERT [dbo].[Friends_GroupMember] ([Id], [GroupId], [GroupMemberId], [GroupMemberName], [CreateTime], [CreateId], [UpdateTime], [UpdateId], [IsDelete]) VALUES (N'fbca07dd-a283-49f2-bf91-5e77d19840c3', N'cbb84e6f-600f-4738-810c-c05d43af2131', N'0ce8975c-2e78-40ed-ba4d-01efd36bc451', N'15960380364', CAST(0x0000A81200E78887 AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', CAST(0x0000A81200E78887 AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', 0)
INSERT [dbo].[Friends_GroupMember] ([Id], [GroupId], [GroupMemberId], [GroupMemberName], [CreateTime], [CreateId], [UpdateTime], [UpdateId], [IsDelete]) VALUES (N'9749ed33-7490-4411-ade7-7eda45e6116c', N'cbb84e6f-600f-4738-810c-c05d43af2131', N'2c4ff9ca-94fe-4c50-aa48-ecf33a3fe219', N'15960380362', CAST(0x0000A81200E7388B AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', CAST(0x0000A81200E7388B AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', 0)
INSERT [dbo].[Friends_GroupMember] ([Id], [GroupId], [GroupMemberId], [GroupMemberName], [CreateTime], [CreateId], [UpdateTime], [UpdateId], [IsDelete]) VALUES (N'321527e3-43c1-457e-ae40-dacbcc96d3fa', N'cbb84e6f-600f-4738-810c-c05d43af2131', N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', N'15960380361', CAST(0x0000A81200E6DFED AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', CAST(0x0000A81200E6DFED AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', 0)
INSERT [dbo].[Friends_GroupMember] ([Id], [GroupId], [GroupMemberId], [GroupMemberName], [CreateTime], [CreateId], [UpdateTime], [UpdateId], [IsDelete]) VALUES (N'54638673-2e71-4f06-a958-eaae8702eb46', N'5261caaf-5e0d-477f-85bf-78349b0944e0', N'2c4ff9ca-94fe-4c50-aa48-ecf33a3fe219', N'15960380362', CAST(0x0000A81200E7D5AB AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', CAST(0x0000A81200E7D5AB AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', 0)
INSERT [dbo].[Friends_GroupMember] ([Id], [GroupId], [GroupMemberId], [GroupMemberName], [CreateTime], [CreateId], [UpdateTime], [UpdateId], [IsDelete]) VALUES (N'9fb534c8-680c-4b27-aef6-f70a0d4b6cae', N'fa8428a3-9f15-4e04-a1de-3595e16e2781', N'be7cd51d-2a7b-4cb4-80f7-f40952abe90e', N'15960380363', CAST(0x0000A81200E82C1B AS DateTime), N'2c4ff9ca-94fe-4c50-aa48-ecf33a3fe219', CAST(0x0000A81200E82C1B AS DateTime), N'2c4ff9ca-94fe-4c50-aa48-ecf33a3fe219', 0)
INSERT [dbo].[Friends_GroupMember] ([Id], [GroupId], [GroupMemberId], [GroupMemberName], [CreateTime], [CreateId], [UpdateTime], [UpdateId], [IsDelete]) VALUES (N'3acfab85-c732-4b9f-9ed2-fe3f845967e4', N'cbb84e6f-600f-4738-810c-c05d43af2131', N'be7cd51d-2a7b-4cb4-80f7-f40952abe90e', N'15960380363', CAST(0x0000A81200E76396 AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', CAST(0x0000A81200E76396 AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', 0)
INSERT [dbo].[Friends_News] ([Id], [SenderId], [OwnerId], [SendContent], [UnReadNum], [CreateTime], [CreateId], [UpdateTime], [UpdateId], [IsDelete]) VALUES (N'd1fa6ce2-6fed-4295-abff-001bd04dc885', N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', N'be7cd51d-2a7b-4cb4-80f7-f40952abe90e', N'你是谁', 0, CAST(0x0000A81201095045 AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', CAST(0x0000A81201095045 AS DateTime), N'be7cd51d-2a7b-4cb4-80f7-f40952abe90e', 0)
INSERT [dbo].[Friends_News] ([Id], [SenderId], [OwnerId], [SendContent], [UnReadNum], [CreateTime], [CreateId], [UpdateTime], [UpdateId], [IsDelete]) VALUES (N'a030793e-4be6-4fb2-89e5-73f456eb4e5b', N'2c4ff9ca-94fe-4c50-aa48-ecf33a3fe219', N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', N'123', 0, CAST(0x0000A8120107DA1A AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', CAST(0x0000A8120107DA1A AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', 0)
INSERT [dbo].[Friends_News] ([Id], [SenderId], [OwnerId], [SendContent], [UnReadNum], [CreateTime], [CreateId], [UpdateTime], [UpdateId], [IsDelete]) VALUES (N'95a859e7-c4fd-49ff-b548-85e14ba2e0e8', N'be7cd51d-2a7b-4cb4-80f7-f40952abe90e', N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', N'你是谁', 0, CAST(0x0000A81201095045 AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', CAST(0x0000A81201095045 AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', 0)
INSERT [dbo].[Friends_News] ([Id], [SenderId], [OwnerId], [SendContent], [UnReadNum], [CreateTime], [CreateId], [UpdateTime], [UpdateId], [IsDelete]) VALUES (N'147e70f6-9240-4523-bdaa-d1baf9a5c8e6', N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', N'2c4ff9ca-94fe-4c50-aa48-ecf33a3fe219', N'123', 0, CAST(0x0000A8120107DA1A AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', CAST(0x0000A8120107DA1A AS DateTime), N'2c4ff9ca-94fe-4c50-aa48-ecf33a3fe219', 0)
SET IDENTITY_INSERT [dbo].[UserInfo] ON 

INSERT [dbo].[UserInfo] ([Id], [No], [UserName], [Account], [Pasword], [HeadPicture], [Sex], [State], [QQOpenId], [CreateTime], [CreateId], [UpdateTime], [UpdateId], [IsDelete]) VALUES (N'0ce8975c-2e78-40ed-ba4d-01efd36bc451', 10003, N'15960380364', N'15960380364', N'202cb962ac59075b964b07152d234b70', N'/Upload/15960380364/HeadPicture/20171017924716680684.bmp', N'2', N'0', NULL, CAST(0x0000A80F009AF0BC AS DateTime), N'0ce8975c-2e78-40ed-ba4d-01efd36bc451', CAST(0x0000A80F009AF0BC AS DateTime), N'0ce8975c-2e78-40ed-ba4d-01efd36bc451', 0)
INSERT [dbo].[UserInfo] ([Id], [No], [UserName], [Account], [Pasword], [HeadPicture], [Sex], [State], [QQOpenId], [CreateTime], [CreateId], [UpdateTime], [UpdateId], [IsDelete]) VALUES (N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', 10000, N'15960380361', N'15960380361', N'202cb962ac59075b964b07152d234b70', N'/Upload/15960380361/HeadPicture/201710111638423635845161267192.gif', N'2', N'0', NULL, CAST(0x0000A8090112525D AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', CAST(0x0000A8090112525D AS DateTime), N'1525b95f-c566-4b43-bd53-13ab2e2ebe97', 0)
INSERT [dbo].[UserInfo] ([Id], [No], [UserName], [Account], [Pasword], [HeadPicture], [Sex], [State], [QQOpenId], [CreateTime], [CreateId], [UpdateTime], [UpdateId], [IsDelete]) VALUES (N'2c4ff9ca-94fe-4c50-aa48-ecf33a3fe219', 10001, N'15960380362', N'15960380362', N'202cb962ac59075b964b07152d234b70', N'/Upload/15960380362/HeadPicture/201710111719162796912718748876.gif', N'2', N'0', NULL, CAST(0x0000A809011D71CA AS DateTime), N'2c4ff9ca-94fe-4c50-aa48-ecf33a3fe219', CAST(0x0000A809011D71CA AS DateTime), N'2c4ff9ca-94fe-4c50-aa48-ecf33a3fe219', 0)
INSERT [dbo].[UserInfo] ([Id], [No], [UserName], [Account], [Pasword], [HeadPicture], [Sex], [State], [QQOpenId], [CreateTime], [CreateId], [UpdateTime], [UpdateId], [IsDelete]) VALUES (N'be7cd51d-2a7b-4cb4-80f7-f40952abe90e', 10002, N'15960380363', N'15960380363', N'202cb962ac59075b964b07152d234b70', N'/Upload/15960380363/HeadPicture/201710179234111325590.jpg', N'2', N'0', NULL, CAST(0x0000A80F009AD767 AS DateTime), N'be7cd51d-2a7b-4cb4-80f7-f40952abe90e', CAST(0x0000A80F009AD767 AS DateTime), N'be7cd51d-2a7b-4cb4-80f7-f40952abe90e', 0)
SET IDENTITY_INSERT [dbo].[UserInfo] OFF
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends', N'COLUMN',N'Id'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends', @level2type=N'COLUMN',@level2name=N'Id'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends', N'COLUMN',N'FriendId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'好友Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends', @level2type=N'COLUMN',@level2name=N'FriendId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends', N'COLUMN',N'OwnerId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拥有者Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends', @level2type=N'COLUMN',@level2name=N'OwnerId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends', N'COLUMN',N'Remark'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'好友备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends', @level2type=N'COLUMN',@level2name=N'Remark'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends', N'COLUMN',N'State'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拥有者是否为对方好友：0否，1是' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends', @level2type=N'COLUMN',@level2name=N'State'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends', N'COLUMN',N'CreateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends', N'COLUMN',N'CreateId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends', @level2type=N'COLUMN',@level2name=N'CreateId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends', N'COLUMN',N'UpdateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends', N'COLUMN',N'UpdateId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends', @level2type=N'COLUMN',@level2name=N'UpdateId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends', N'COLUMN',N'IsDelete'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除：0未删除，1已删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends', @level2type=N'COLUMN',@level2name=N'IsDelete'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Apply', N'COLUMN',N'ApplyerId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'申请者Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Apply', @level2type=N'COLUMN',@level2name=N'ApplyerId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Apply', N'COLUMN',N'OwnerId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收者Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Apply', @level2type=N'COLUMN',@level2name=N'OwnerId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Apply', N'COLUMN',N'Remark'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Apply', @level2type=N'COLUMN',@level2name=N'Remark'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Apply', N'COLUMN',N'IsApply'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否审核：0未审核，1通过，2拒绝' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Apply', @level2type=N'COLUMN',@level2name=N'IsApply'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Apply', N'COLUMN',N'IsRead'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否查看：0未看，1已看' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Apply', @level2type=N'COLUMN',@level2name=N'IsRead'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Apply', N'COLUMN',N'CreateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Apply', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Apply', N'COLUMN',N'CreateId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Apply', @level2type=N'COLUMN',@level2name=N'CreateId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Apply', N'COLUMN',N'UpdateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Apply', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Apply', N'COLUMN',N'UpdateId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Apply', @level2type=N'COLUMN',@level2name=N'UpdateId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Apply', N'COLUMN',N'IsDelete'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除：0未删除，1已删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Apply', @level2type=N'COLUMN',@level2name=N'IsDelete'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Chat', N'COLUMN',N'SenderId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Chat', @level2type=N'COLUMN',@level2name=N'SenderId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Chat', N'COLUMN',N'OwnerId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收者Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Chat', @level2type=N'COLUMN',@level2name=N'OwnerId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Chat', N'COLUMN',N'SendContent'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Chat', @level2type=N'COLUMN',@level2name=N'SendContent'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Chat', N'COLUMN',N'SendType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送类型：0文本，1图片，2语音' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Chat', @level2type=N'COLUMN',@level2name=N'SendType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Chat', N'COLUMN',N'CreateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Chat', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Chat', N'COLUMN',N'CreateId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Chat', @level2type=N'COLUMN',@level2name=N'CreateId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Chat', N'COLUMN',N'UpdateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Chat', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Chat', N'COLUMN',N'UpdateId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Chat', @level2type=N'COLUMN',@level2name=N'UpdateId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Chat', N'COLUMN',N'IsDelete'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除：0未删除，1已删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Chat', @level2type=N'COLUMN',@level2name=N'IsDelete'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Group', N'COLUMN',N'Id'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Group', @level2type=N'COLUMN',@level2name=N'Id'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Group', N'COLUMN',N'GroupName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'群名字' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Group', @level2type=N'COLUMN',@level2name=N'GroupName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Group', N'COLUMN',N'OwnerId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'拥有者Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Group', @level2type=N'COLUMN',@level2name=N'OwnerId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Group', N'COLUMN',N'State'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否冻结：0正常，1冻结' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Group', @level2type=N'COLUMN',@level2name=N'State'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Group', N'COLUMN',N'CreateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Group', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Group', N'COLUMN',N'CreateId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Group', @level2type=N'COLUMN',@level2name=N'CreateId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Group', N'COLUMN',N'UpdateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Group', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Group', N'COLUMN',N'UpdateId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Group', @level2type=N'COLUMN',@level2name=N'UpdateId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_Group', N'COLUMN',N'IsDelete'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除：0未删除，1已删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_Group', @level2type=N'COLUMN',@level2name=N'IsDelete'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupChat', N'COLUMN',N'SenderId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupChat', @level2type=N'COLUMN',@level2name=N'SenderId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupChat', N'COLUMN',N'ReceiverId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收者Id:@用户Id,没有@则为空guid' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupChat', @level2type=N'COLUMN',@level2name=N'ReceiverId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupChat', N'COLUMN',N'SendContent'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupChat', @level2type=N'COLUMN',@level2name=N'SendContent'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupChat', N'COLUMN',N'SendType'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送类型：0文本，1图片，2语音' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupChat', @level2type=N'COLUMN',@level2name=N'SendType'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupChat', N'COLUMN',N'CreateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupChat', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupChat', N'COLUMN',N'CreateId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupChat', @level2type=N'COLUMN',@level2name=N'CreateId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupChat', N'COLUMN',N'UpdateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupChat', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupChat', N'COLUMN',N'UpdateId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupChat', @level2type=N'COLUMN',@level2name=N'UpdateId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupChat', N'COLUMN',N'IsDelete'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除：0未删除，1已删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupChat', @level2type=N'COLUMN',@level2name=N'IsDelete'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupMember', N'COLUMN',N'Id'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupMember', @level2type=N'COLUMN',@level2name=N'Id'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupMember', N'COLUMN',N'GroupId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'群Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupMember', @level2type=N'COLUMN',@level2name=N'GroupId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupMember', N'COLUMN',N'GroupMemberId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'群成员Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupMember', @level2type=N'COLUMN',@level2name=N'GroupMemberId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupMember', N'COLUMN',N'GroupMemberName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'群成员名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupMember', @level2type=N'COLUMN',@level2name=N'GroupMemberName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupMember', N'COLUMN',N'CreateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupMember', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupMember', N'COLUMN',N'CreateId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupMember', @level2type=N'COLUMN',@level2name=N'CreateId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupMember', N'COLUMN',N'UpdateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupMember', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupMember', N'COLUMN',N'UpdateId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupMember', @level2type=N'COLUMN',@level2name=N'UpdateId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupMember', N'COLUMN',N'IsDelete'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除：0未删除，1已删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupMember', @level2type=N'COLUMN',@level2name=N'IsDelete'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupNews', N'COLUMN',N'Id'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'主键Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupNews', @level2type=N'COLUMN',@level2name=N'Id'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupNews', N'COLUMN',N'GroupId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'群Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupNews', @level2type=N'COLUMN',@level2name=N'GroupId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupNews', N'COLUMN',N'SenderId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupNews', @level2type=N'COLUMN',@level2name=N'SenderId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupNews', N'COLUMN',N'OwnerId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'数据拥有者Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupNews', @level2type=N'COLUMN',@level2name=N'OwnerId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupNews', N'COLUMN',N'SendContent'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后一次发送的内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupNews', @level2type=N'COLUMN',@level2name=N'SendContent'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupNews', N'COLUMN',N'UnReadNum'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'未读数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupNews', @level2type=N'COLUMN',@level2name=N'UnReadNum'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupNews', N'COLUMN',N'CreateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupNews', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupNews', N'COLUMN',N'CreateId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupNews', @level2type=N'COLUMN',@level2name=N'CreateId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupNews', N'COLUMN',N'UpdateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupNews', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupNews', N'COLUMN',N'UpdateId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupNews', @level2type=N'COLUMN',@level2name=N'UpdateId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_GroupNews', N'COLUMN',N'IsDelete'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除：0未删除，1已删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_GroupNews', @level2type=N'COLUMN',@level2name=N'IsDelete'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_News', N'COLUMN',N'SenderId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送者' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_News', @level2type=N'COLUMN',@level2name=N'SenderId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_News', N'COLUMN',N'OwnerId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收者Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_News', @level2type=N'COLUMN',@level2name=N'OwnerId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_News', N'COLUMN',N'SendContent'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'最后一次发送的内容' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_News', @level2type=N'COLUMN',@level2name=N'SendContent'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_News', N'COLUMN',N'UnReadNum'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'未读数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_News', @level2type=N'COLUMN',@level2name=N'UnReadNum'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_News', N'COLUMN',N'CreateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_News', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_News', N'COLUMN',N'CreateId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_News', @level2type=N'COLUMN',@level2name=N'CreateId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_News', N'COLUMN',N'UpdateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_News', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_News', N'COLUMN',N'UpdateId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_News', @level2type=N'COLUMN',@level2name=N'UpdateId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'Friends_News', N'COLUMN',N'IsDelete'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除：0未删除，1已删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Friends_News', @level2type=N'COLUMN',@level2name=N'IsDelete'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', N'COLUMN',N'Id'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'Id'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', N'COLUMN',N'No'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'账号编号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'No'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', N'COLUMN',N'UserName'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'UserName'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', N'COLUMN',N'Account'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'账号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'Account'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', N'COLUMN',N'Pasword'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'Pasword'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', N'COLUMN',N'HeadPicture'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'头像路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'HeadPicture'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', N'COLUMN',N'Sex'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'性别：0男，1女，2不显示' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'Sex'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', N'COLUMN',N'State'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户状态:0正常，1被冻结' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'State'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', N'COLUMN',N'QQOpenId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'QQOpenId，用户QQ登陆' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'QQOpenId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', N'COLUMN',N'CreateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'CreateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', N'COLUMN',N'CreateId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'创建人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'CreateId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', N'COLUMN',N'UpdateTime'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'UpdateTime'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', N'COLUMN',N'UpdateId'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改人Id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'UpdateId'
GO
IF NOT EXISTS (SELECT * FROM ::fn_listextendedproperty(N'MS_Description' , N'SCHEMA',N'dbo', N'TABLE',N'UserInfo', N'COLUMN',N'IsDelete'))
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否删除：0未删除，1已删除' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'UserInfo', @level2type=N'COLUMN',@level2name=N'IsDelete'
GO
