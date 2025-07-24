CREATE TABLE [dbo].[MembershipPlanHistory] (
    [PlanId]         INT             NOT NULL,
    [GymId]          INT             NOT NULL,
    [Name]           VARCHAR (100)   NOT NULL,
    [Description]    VARCHAR (500)   NULL,
    [MonthlyRate]    DECIMAL (10, 2) NOT NULL,
    [DurationMonths] INT             NULL,
    [IsActive]       BIT             NOT NULL,
    [ChangeUser]     VARCHAR (100)   NULL,
    [ValidFrom]      DATETIME2 (7)   NOT NULL,
    [ValidTo]        DATETIME2 (7)   NOT NULL
);


GO
CREATE CLUSTERED INDEX [ix_MembershipPlanHistory]
    ON [dbo].[MembershipPlanHistory]([ValidTo] ASC, [ValidFrom] ASC) WITH (DATA_COMPRESSION = PAGE);

