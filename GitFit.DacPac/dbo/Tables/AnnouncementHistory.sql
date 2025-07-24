CREATE TABLE [dbo].[AnnouncementHistory] (
    [AnnouncementId] INT            NOT NULL,
    [GymId]          INT            NOT NULL,
    [Title]          NVARCHAR (100) NOT NULL,
    [Content]        NVARCHAR (MAX) NOT NULL,
    [PostedBy]       INT            NOT NULL,
    [PostDate]       DATETIME2 (7)  NOT NULL,
    [ExpiryDate]     DATETIME2 (7)  NULL,
    [ChangeUser]     VARCHAR (100)  NULL,
    [ValidFrom]      DATETIME2 (7)  NOT NULL,
    [ValidTo]        DATETIME2 (7)  NOT NULL
);


GO
CREATE CLUSTERED INDEX [ix_AnnouncementHistory]
    ON [dbo].[AnnouncementHistory]([ValidTo] ASC, [ValidFrom] ASC) WITH (DATA_COMPRESSION = PAGE);

