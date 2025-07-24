CREATE TABLE [dbo].[GymHistory] (
    [GymId]     INT           NOT NULL,
    [Name]      VARCHAR (100) NOT NULL,
    [Address]   VARCHAR (200) NOT NULL,
    [City]      VARCHAR (50)  NOT NULL,
    [State]     VARCHAR (50)  NOT NULL,
    [ZipCode]   VARCHAR (10)  NOT NULL,
    [Phone]     VARCHAR (20)  NULL,
    [Email]     VARCHAR (100) NULL,
    [OpenDate]  DATETIME      NULL,
    [CloseDate] DATETIME      NULL,
    [ValidFrom] DATETIME2 (7) NOT NULL,
    [ValidTo]   DATETIME2 (7) NOT NULL
);


GO
CREATE CLUSTERED INDEX [ix_GymHistory]
    ON [dbo].[GymHistory]([ValidTo] ASC, [ValidFrom] ASC) WITH (DATA_COMPRESSION = PAGE);

