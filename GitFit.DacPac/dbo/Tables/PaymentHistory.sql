CREATE TABLE [dbo].[PaymentHistory] (
    [PaymentId]      INT             NOT NULL,
    [MemberId]       INT             NOT NULL,
    [SubscriptionId] INT             NULL,
    [Amount]         DECIMAL (10, 2) NOT NULL,
    [PaymentDate]    DATETIME2 (7)   NOT NULL,
    [PaymentMethod]  NVARCHAR (50)   NOT NULL,
    [Status]         NVARCHAR (20)   NOT NULL,
    [TransactionId]  NVARCHAR (100)  NULL,
    [ValidFrom]      DATETIME2 (7)   NOT NULL,
    [ValidTo]        DATETIME2 (7)   NOT NULL
);


GO
CREATE CLUSTERED INDEX [ix_PaymentHistory]
    ON [dbo].[PaymentHistory]([ValidTo] ASC, [ValidFrom] ASC) WITH (DATA_COMPRESSION = PAGE);

