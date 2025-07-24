CREATE TABLE [dbo].[Employee] (
    [EmployeeId] INT                                         IDENTITY (1, 1) NOT NULL,
    [GymId]      INT                                         NOT NULL,
    [FirstName]  VARCHAR (50)                                NOT NULL,
    [LastName]   VARCHAR (50)                                NOT NULL,
    [Email]      VARCHAR (100)                               NOT NULL,
    [Phone]      VARCHAR (20)                                NULL,
    [HireDate]   DATE                                        NOT NULL,
    [Role]       VARCHAR (50)                                NOT NULL,
    [HourlyRate] DECIMAL (10, 2)                             NOT NULL,
    [Status]     VARCHAR (20)                                DEFAULT ('Active') NOT NULL,
    [ValidFrom]  DATETIME2 (7) GENERATED ALWAYS AS ROW START NOT NULL,
    [ValidTo]    DATETIME2 (7) GENERATED ALWAYS AS ROW END   NOT NULL,
    PRIMARY KEY CLUSTERED ([EmployeeId] ASC),
    FOREIGN KEY ([GymId]) REFERENCES [dbo].[Gym] ([GymId]),
    UNIQUE NONCLUSTERED ([Email] ASC),
    PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=[dbo].[EmployeeHistory], DATA_CONSISTENCY_CHECK=ON));

