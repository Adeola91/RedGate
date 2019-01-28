CREATE TABLE [dbo].[Contracts]
(
[ContractID] [int] NOT NULL IDENTITY(10001, 1),
[ContractName] [nvarchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ClientID] [int] NOT NULL,
[StartDate] [datetime2] NULL,
[EndDate] [datetime2] NULL,
[ValidDate] [bit] NULL
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE TRIGGER [dbo].[ValidCheck] ON [dbo].[Contracts]
AFTER INSERT
AS
DECLARE @edate DATETIME2
DECLARE @vdate bit
--SELECT @cid = ClientID FROM Inserted

BEGIN
--IF ( GETDATE() >  @edate )
	SELECT @edate = EndDate FROM Inserted;
		
		UPDATE dbo.Contracts
		SET ValidDate = 0;

	SELECT @edate = EndDate FROM Inserted;

	/*
	UPDATE dbo.Contracts
	SET ValidDate = 0
	WHERE GETDATE() >  @edate;
	*/

	UPDATE dbo.Contracts
	SET ValidDate = 1
	FROM dbo.Contracts
	WHERE GETDATE() <=  @edate
	;
	SELECT @vdate = ValidDate FROM dbo.Contracts;
	PRINT CONCAT(@edate,' ... ValidDate is ',@vdate)
;
/*ELSE
	UPDATE dbo.Contracts
	SET ValidDate = 1
	WHERE @cid = ClientID; */
END
GO
ALTER TABLE [dbo].[Contracts] ADD CONSTRAINT [PK__Contract__C90D34094A461485] PRIMARY KEY CLUSTERED  ([ContractID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Contracts] ADD CONSTRAINT [FK__Contracts__Clien__5BE2A6F2] FOREIGN KEY ([ClientID]) REFERENCES [dbo].[Clients] ([ClientID])
GO
