CREATE TABLE [dbo].[MemberSubscriptionHistory] (
    [SubscriptionId] INT           NOT NULL,
    [MemberId]       INT           NOT NULL,
    [PlanId]         INT           NOT NULL,
    [StartDate]      DATETIME      NOT NULL,
    [EndDate]        DATETIME      NULL,
    [Status]         VARCHAR (20)  NOT NULL,
    [ChangeUser]     VARCHAR (100) NULL,
    [ValidFrom]      DATETIME2 (7) NOT NULL,
    [ValidTo]        DATETIME2 (7) NOT NULL
);


GO
CREATE CLUSTERED INDEX [ix_MemberSubscriptionHistory]
    ON [dbo].[MemberSubscriptionHistory]([ValidTo] ASC, [ValidFrom] ASC) WITH (DATA_COMPRESSION = PAGE);

