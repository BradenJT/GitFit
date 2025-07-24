CREATE TABLE [dbo].[EmployeeHistory] (
    [EmployeeId] INT             NOT NULL,
    [GymId]      INT             NOT NULL,
    [FirstName]  VARCHAR (50)    NOT NULL,
    [LastName]   VARCHAR (50)    NOT NULL,
    [Email]      VARCHAR (100)   NOT NULL,
    [Phone]      VARCHAR (20)    NULL,
    [HireDate]   DATE            NOT NULL,
    [Role]       VARCHAR (50)    NOT NULL,
    [HourlyRate] DECIMAL (10, 2) NOT NULL,
    [Status]     VARCHAR (20)    NOT NULL,
    [ValidFrom]  DATETIME2 (7)   NOT NULL,
    [ValidTo]    DATETIME2 (7)   NOT NULL
);


GO
CREATE CLUSTERED INDEX [ix_EmployeeHistory]
    ON [dbo].[EmployeeHistory]([ValidTo] ASC, [ValidFrom] ASC) WITH (DATA_COMPRESSION = PAGE);

