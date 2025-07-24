CREATE TABLE [dbo].[Class] (
    [ClassId]       INT                                         IDENTITY (1, 1) NOT NULL,
    [GymId]         INT                                         NOT NULL,
    [Name]          NVARCHAR (100)                              NOT NULL,
    [Description]   NVARCHAR (500)                              NULL,
    [InstructorId]  INT                                         NOT NULL,
    [StartDateTime] DATETIME2 (7)                               NOT NULL,
    [EndDateTime]   DATETIME2 (7)                               NOT NULL,
    [MaxCapacity]   INT                                         NOT NULL,
    [ChangeUser]    VARCHAR (100)                               NULL,
    [ValidFrom]     DATETIME2 (7) GENERATED ALWAYS AS ROW START NOT NULL,
    [ValidTo]       DATETIME2 (7) GENERATED ALWAYS AS ROW END   NOT NULL,
    PRIMARY KEY CLUSTERED ([ClassId] ASC),
    FOREIGN KEY ([GymId]) REFERENCES [dbo].[Gym] ([GymId]),
    FOREIGN KEY ([InstructorId]) REFERENCES [dbo].[Employee] ([EmployeeId]),
    PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=[dbo].[ClassHistory], DATA_CONSISTENCY_CHECK=ON));

