CREATE TABLE [dbo].[EmployeeScheduleHistory] (
    [ScheduleId]    INT           NOT NULL,
    [EmployeeId]    INT           NOT NULL,
    [GymId]         INT           NOT NULL,
    [StartDateTime] DATETIME2 (7) NOT NULL,
    [EndDateTime]   DATETIME2 (7) NOT NULL,
    [ShiftType]     VARCHAR (50)  NULL,
    [Notes]         VARCHAR (500) NULL,
    [ChangeUser]    VARCHAR (120) NOT NULL,
    [ValidFrom]     DATETIME2 (7) NOT NULL,
    [ValidTo]       DATETIME2 (7) NOT NULL
);


GO
CREATE CLUSTERED INDEX [ix_EmployeeScheduleHistory]
    ON [dbo].[EmployeeScheduleHistory]([ValidTo] ASC, [ValidFrom] ASC) WITH (DATA_COMPRESSION = PAGE);

