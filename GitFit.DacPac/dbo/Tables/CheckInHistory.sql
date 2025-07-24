CREATE TABLE [dbo].[CheckInHistory] (
    [CheckInId]   INT           NOT NULL,
    [MemberId]    INT           NOT NULL,
    [GymId]       INT           NOT NULL,
    [CheckInTime] DATETIME2 (7) NOT NULL,
    [ChangeUser]  VARCHAR (100) NULL,
    [ValidFrom]   DATETIME2 (7) NOT NULL,
    [ValidTo]     DATETIME2 (7) NOT NULL
);


GO
CREATE CLUSTERED INDEX [ix_CheckInHistory]
    ON [dbo].[CheckInHistory]([ValidTo] ASC, [ValidFrom] ASC) WITH (DATA_COMPRESSION = PAGE);

