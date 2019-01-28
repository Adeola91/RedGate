CREATE TABLE [dbo].[Employees]
(
[EmployeeID] [int] NOT NULL IDENTITY(1, 1),
[Lastname] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Firstname] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Salary] [float] NULL,
[Occupation] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Department] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PhoneNumber] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Name] AS (concat([Firstname],' ',[Lastname])),
[Title] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Employees] ADD CONSTRAINT [PK__Employee__7AD04FF142EACF54] PRIMARY KEY CLUSTERED  ([EmployeeID]) ON [PRIMARY]
GO
