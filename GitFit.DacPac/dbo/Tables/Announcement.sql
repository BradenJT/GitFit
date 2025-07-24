CREATE TABLE [dbo].[Announcement] (
    [AnnouncementId] INT                                         IDENTITY (1, 1) NOT NULL,
    [GymId]          INT                                         NOT NULL,
    [Title]          NVARCHAR (100)                              NOT NULL,
    [Content]        NVARCHAR (MAX)                              NOT NULL,
    [PostedBy]       INT                                         NOT NULL,
    [PostDate]       DATETIME2 (7)                               NOT NULL,
    [ExpiryDate]     DATETIME2 (7)                               NULL,
    [ChangeUser]     VARCHAR (100)                               NULL,
    [ValidFrom]      DATETIME2 (7) GENERATED ALWAYS AS ROW START NOT NULL,
    [ValidTo]        DATETIME2 (7) GENERATED ALWAYS AS ROW END   NOT NULL,
    PRIMARY KEY CLUSTERED ([AnnouncementId] ASC),
    FOREIGN KEY ([GymId]) REFERENCES [dbo].[Gym] ([GymId]),
    FOREIGN KEY ([PostedBy]) REFERENCES [dbo].[Employee] ([EmployeeId]),
    PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=[dbo].[AnnouncementHistory], DATA_CONSISTENCY_CHECK=ON));

