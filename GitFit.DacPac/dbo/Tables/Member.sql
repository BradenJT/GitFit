CREATE TABLE [dbo].[Member] (
    [MemberId]              INT                                         IDENTITY (1, 1) NOT NULL,
    [GymId]                 INT                                         NOT NULL,
    [FirstName]             VARCHAR (50)                                NOT NULL,
    [LastName]              VARCHAR (50)                                NOT NULL,
    [Email]                 VARCHAR (100)                               NOT NULL,
    [Phone]                 VARCHAR (20)                                NULL,
    [DateOfBirth]           DATE                                        NULL,
    [LastCheckInDate]       DATETIME                                    NULL,
    [JoinDate]              DATETIME                                    NOT NULL,
    [Status]                NVARCHAR (20)                               DEFAULT ('Active') NOT NULL,
    [EmergencyContactName]  VARCHAR (100)                               NULL,
    [EmergencyContactPhone] VARCHAR (20)                                NULL,
    [ChagneUser]            VARCHAR (100)                               NULL,
    [ValidFrom]             DATETIME2 (7) GENERATED ALWAYS AS ROW START NOT NULL,
    [ValidTo]               DATETIME2 (7) GENERATED ALWAYS AS ROW END   NOT NULL,
    PRIMARY KEY CLUSTERED ([MemberId] ASC),
    FOREIGN KEY ([GymId]) REFERENCES [dbo].[Gym] ([GymId]),
    UNIQUE NONCLUSTERED ([Email] ASC),
    PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=[dbo].[MemberHistory], DATA_CONSISTENCY_CHECK=ON));

