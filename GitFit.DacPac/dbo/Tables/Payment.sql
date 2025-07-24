CREATE TABLE [dbo].[Payment] (
    [PaymentId]      INT                                         IDENTITY (1, 1) NOT NULL,
    [MemberId]       INT                                         NOT NULL,
    [SubscriptionId] INT                                         NULL,
    [Amount]         DECIMAL (10, 2)                             NOT NULL,
    [PaymentDate]    DATETIME2 (7)                               NOT NULL,
    [PaymentMethod]  NVARCHAR (50)                               NOT NULL,
    [Status]         NVARCHAR (20)                               DEFAULT ('Completed') NOT NULL,
    [TransactionId]  NVARCHAR (100)                              NULL,
    [ValidFrom]      DATETIME2 (7) GENERATED ALWAYS AS ROW START NOT NULL,
    [ValidTo]        DATETIME2 (7) GENERATED ALWAYS AS ROW END   NOT NULL,
    PRIMARY KEY CLUSTERED ([PaymentId] ASC),
    FOREIGN KEY ([MemberId]) REFERENCES [dbo].[Member] ([MemberId]),
    FOREIGN KEY ([SubscriptionId]) REFERENCES [dbo].[MemberSubscription] ([SubscriptionId]),
    PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=[dbo].[PaymentHistory], DATA_CONSISTENCY_CHECK=ON));

