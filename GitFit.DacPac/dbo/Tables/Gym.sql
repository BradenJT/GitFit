CREATE TABLE [dbo].[Gym] (
    [GymId]     INT                                         IDENTITY (1, 1) NOT NULL,
    [Name]      VARCHAR (100)                               NOT NULL,
    [Address]   VARCHAR (200)                               NOT NULL,
    [City]      VARCHAR (50)                                NOT NULL,
    [State]     VARCHAR (50)                                NOT NULL,
    [ZipCode]   VARCHAR (10)                                NOT NULL,
    [Phone]     VARCHAR (20)                                NULL,
    [Email]     VARCHAR (100)                               NULL,
    [OpenDate]  DATETIME                                    NULL,
    [CloseDate] DATETIME                                    NULL,
    [ValidFrom] DATETIME2 (7) GENERATED ALWAYS AS ROW START NOT NULL,
    [ValidTo]   DATETIME2 (7) GENERATED ALWAYS AS ROW END   NOT NULL,
    PRIMARY KEY CLUSTERED ([GymId] ASC),
    PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=[dbo].[GymHistory], DATA_CONSISTENCY_CHECK=ON));

