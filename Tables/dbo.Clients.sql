CREATE TABLE [dbo].[Clients]
(
[ClientID] [int] NOT NULL IDENTITY(1, 1),
[ProjectName] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Organization] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ContractID] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ContractAmount] [money] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Clients] ADD CONSTRAINT [PK__Clients__E67E1A043D2BC440] PRIMARY KEY CLUSTERED  ([ClientID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Clients] ADD CONSTRAINT [Un1] UNIQUE NONCLUSTERED  ([ContractID]) ON [PRIMARY]
GO
