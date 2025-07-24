CREATE TABLE [dbo].[EquipmentMaintenance] (
    [MaintenanceId]   INT                                         IDENTITY (1, 1) NOT NULL,
    [EquipmentId]     INT                                         NOT NULL,
    [MaintenanceDate] DATE                                        NOT NULL,
    [Description]     NVARCHAR (500)                              NOT NULL,
    [Cost]            DECIMAL (10, 2)                             NULL,
    [PerformedBy]     NVARCHAR (100)                              NULL,
    [ChangeUser]      VARCHAR (100)                               NULL,
    [ValidFrom]       DATETIME2 (7) GENERATED ALWAYS AS ROW START NOT NULL,
    [ValidTo]         DATETIME2 (7) GENERATED ALWAYS AS ROW END   NOT NULL,
    PRIMARY KEY CLUSTERED ([MaintenanceId] ASC),
    FOREIGN KEY ([EquipmentId]) REFERENCES [dbo].[Equipment] ([EquipmentId]),
    PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=[dbo].[EquipmentMaintenanceHistory], DATA_CONSISTENCY_CHECK=ON));

