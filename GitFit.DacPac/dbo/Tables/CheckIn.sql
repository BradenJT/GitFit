CREATE TABLE [dbo].[CheckIn] (
    [CheckInId]   INT                                         IDENTITY (1, 1) NOT NULL,
    [MemberId]    INT                                         NOT NULL,
    [GymId]       INT                                         NOT NULL,
    [CheckInTime] DATETIME2 (7)                               NOT NULL,
    [ChangeUser]  VARCHAR (100)                               NULL,
    [ValidFrom]   DATETIME2 (7) GENERATED ALWAYS AS ROW START NOT NULL,
    [ValidTo]     DATETIME2 (7) GENERATED ALWAYS AS ROW END   NOT NULL,
    PRIMARY KEY CLUSTERED ([CheckInId] ASC),
    FOREIGN KEY ([GymId]) REFERENCES [dbo].[Gym] ([GymId]),
    FOREIGN KEY ([MemberId]) REFERENCES [dbo].[Member] ([MemberId]),
    PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=[dbo].[CheckInHistory], DATA_CONSISTENCY_CHECK=ON));

