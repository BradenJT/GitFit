CREATE TABLE [dbo].[MemberSubscription] (
    [SubscriptionId] INT                                         IDENTITY (1, 1) NOT NULL,
    [MemberId]       INT                                         NOT NULL,
    [PlanId]         INT                                         NOT NULL,
    [StartDate]      DATETIME                                    NOT NULL,
    [EndDate]        DATETIME                                    NULL,
    [Status]         VARCHAR (20)                                DEFAULT ('Active') NOT NULL,
    [ChangeUser]     VARCHAR (100)                               NULL,
    [ValidFrom]      DATETIME2 (7) GENERATED ALWAYS AS ROW START NOT NULL,
    [ValidTo]        DATETIME2 (7) GENERATED ALWAYS AS ROW END   NOT NULL,
    PRIMARY KEY CLUSTERED ([SubscriptionId] ASC),
    FOREIGN KEY ([MemberId]) REFERENCES [dbo].[Member] ([MemberId]),
    FOREIGN KEY ([PlanId]) REFERENCES [dbo].[MembershipPlan] ([PlanId]),
    PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=[dbo].[MemberSubscriptionHistory], DATA_CONSISTENCY_CHECK=ON));

