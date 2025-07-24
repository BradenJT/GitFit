CREATE TABLE [dbo].[Payroll] (
    [PayrollId]      INT                                         IDENTITY (1, 1) NOT NULL,
    [EmployeeId]     INT                                         NOT NULL,
    [PayPeriodStart] DATE                                        NOT NULL,
    [PayPeriodEnd]   DATE                                        NOT NULL,
    [HoursWorked]    DECIMAL (10, 2)                             NOT NULL,
    [TotalPay]       DECIMAL (10, 2)                             NOT NULL,
    [PaymentDate]    DATETIME                                    NOT NULL,
    [Status]         VARCHAR (20)                                DEFAULT ('Pending') NOT NULL,
    [ValidFrom]      DATETIME2 (7) GENERATED ALWAYS AS ROW START NOT NULL,
    [ValidTo]        DATETIME2 (7) GENERATED ALWAYS AS ROW END   NOT NULL,
    PRIMARY KEY CLUSTERED ([PayrollId] ASC),
    FOREIGN KEY ([EmployeeId]) REFERENCES [dbo].[Employee] ([EmployeeId]),
    PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=[dbo].[PayrollHistory], DATA_CONSISTENCY_CHECK=ON));

