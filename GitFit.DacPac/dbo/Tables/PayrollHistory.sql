CREATE TABLE [dbo].[PayrollHistory] (
    [PayrollId]      INT             NOT NULL,
    [EmployeeId]     INT             NOT NULL,
    [PayPeriodStart] DATE            NOT NULL,
    [PayPeriodEnd]   DATE            NOT NULL,
    [HoursWorked]    DECIMAL (10, 2) NOT NULL,
    [TotalPay]       DECIMAL (10, 2) NOT NULL,
    [PaymentDate]    DATETIME        NOT NULL,
    [Status]         VARCHAR (20)    NOT NULL,
    [ValidFrom]      DATETIME2 (7)   NOT NULL,
    [ValidTo]        DATETIME2 (7)   NOT NULL
);


GO
CREATE CLUSTERED INDEX [ix_PayrollHistory]
    ON [dbo].[PayrollHistory]([ValidTo] ASC, [ValidFrom] ASC) WITH (DATA_COMPRESSION = PAGE);

