CREATE TABLE [dbo].[Equipment] (
    [EquipmentId]  INT                                         IDENTITY (1, 1) NOT NULL,
    [GymId]        INT                                         NOT NULL,
    [Name]         NVARCHAR (100)                              NOT NULL,
    [Category]     NVARCHAR (50)                               NULL,
    [PurchaseDate] DATE                                        NOT NULL,
    [Cost]         DECIMAL (10, 2)                             NOT NULL,
    [Status]       NVARCHAR (20)                               DEFAULT ('Operational') NOT NULL,
    [ChangeUser]   VARCHAR (100)                               NULL,
    [ValidFrom]    DATETIME2 (7) GENERATED ALWAYS AS ROW START NOT NULL,
    [ValidTo]      DATETIME2 (7) GENERATED ALWAYS AS ROW END   NOT NULL,
    PRIMARY KEY CLUSTERED ([EquipmentId] ASC),
    FOREIGN KEY ([GymId]) REFERENCES [dbo].[Gym] ([GymId]),
    PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=[dbo].[EquipmentHistory], DATA_CONSISTENCY_CHECK=ON));

