CREATE TABLE [dbo].[Department]
(
[DeptID] [int] NOT NULL IDENTITY(1, 1),
[DeptName] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DeptChair] [nvarchar] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Department] ADD CONSTRAINT [PK__Departme__0148818E70F57864] PRIMARY KEY CLUSTERED  ([DeptID]) ON [PRIMARY]
GO
