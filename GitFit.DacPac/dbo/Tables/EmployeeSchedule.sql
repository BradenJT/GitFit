CREATE TABLE [dbo].[EmployeeSchedule] (
    [ScheduleId]    INT                                         IDENTITY (1, 1) NOT NULL,
    [EmployeeId]    INT                                         NOT NULL,
    [GymId]         INT                                         NOT NULL,
    [StartDateTime] DATETIME2 (7)                               NOT NULL,
    [EndDateTime]   DATETIME2 (7)                               NOT NULL,
    [ShiftType]     VARCHAR (50)                                NULL,
    [Notes]         VARCHAR (500)                               NULL,
    [ChangeUser]    VARCHAR (120)                               NOT NULL,
    [ValidFrom]     DATETIME2 (7) GENERATED ALWAYS AS ROW START NOT NULL,
    [ValidTo]       DATETIME2 (7) GENERATED ALWAYS AS ROW END   NOT NULL,
    PRIMARY KEY CLUSTERED ([ScheduleId] ASC),
    FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[Employee] ([EmployeeId]),
    FOREIGN KEY ([GymId]) REFERENCES [dbo].[Gym] ([GymId]),
    PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=[dbo].[EmployeeScheduleHistory], DATA_CONSISTENCY_CHECK=ON));

