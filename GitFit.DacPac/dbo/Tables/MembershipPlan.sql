CREATE TABLE [dbo].[MembershipPlan] (
    [PlanId]         INT                                         IDENTITY (1, 1) NOT NULL,
    [GymId]          INT                                         NOT NULL,
    [Name]           VARCHAR (100)                               NOT NULL,
    [Description]    VARCHAR (500)                               NULL,
    [MonthlyRate]    DECIMAL (10, 2)                             NOT NULL,
    [DurationMonths] INT                                         NULL,
    [IsActive]       BIT                                         DEFAULT ((1)) NOT NULL,
    [ChangeUser]     VARCHAR (100)                               NULL,
    [ValidFrom]      DATETIME2 (7) GENERATED ALWAYS AS ROW START NOT NULL,
    [ValidTo]        DATETIME2 (7) GENERATED ALWAYS AS ROW END   NOT NULL,
    PRIMARY KEY CLUSTERED ([PlanId] ASC),
    FOREIGN KEY ([GymId]) REFERENCES [dbo].[Gym] ([GymId]),
    PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=[dbo].[MembershipPlanHistory], DATA_CONSISTENCY_CHECK=ON));

