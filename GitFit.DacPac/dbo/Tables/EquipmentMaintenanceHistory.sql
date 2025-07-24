CREATE TABLE [dbo].[EquipmentMaintenanceHistory] (
    [MaintenanceId]   INT             NOT NULL,
    [EquipmentId]     INT             NOT NULL,
    [MaintenanceDate] DATE            NOT NULL,
    [Description]     NVARCHAR (500)  NOT NULL,
    [Cost]            DECIMAL (10, 2) NULL,
    [PerformedBy]     NVARCHAR (100)  NULL,
    [ChangeUser]      VARCHAR (100)   NULL,
    [ValidFrom]       DATETIME2 (7)   NOT NULL,
    [ValidTo]         DATETIME2 (7)   NOT NULL
);


GO
CREATE CLUSTERED INDEX [ix_EquipmentMaintenanceHistory]
    ON [dbo].[EquipmentMaintenanceHistory]([ValidTo] ASC, [ValidFrom] ASC) WITH (DATA_COMPRESSION = PAGE);

