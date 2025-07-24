CREATE TABLE [dbo].[EquipmentHistory] (
    [EquipmentId]  INT             NOT NULL,
    [GymId]        INT             NOT NULL,
    [Name]         NVARCHAR (100)  NOT NULL,
    [Category]     NVARCHAR (50)   NULL,
    [PurchaseDate] DATE            NOT NULL,
    [Cost]         DECIMAL (10, 2) NOT NULL,
    [Status]       NVARCHAR (20)   NOT NULL,
    [ChangeUser]   VARCHAR (100)   NULL,
    [ValidFrom]    DATETIME2 (7)   NOT NULL,
    [ValidTo]      DATETIME2 (7)   NOT NULL
);


GO
CREATE CLUSTERED INDEX [ix_EquipmentHistory]
    ON [dbo].[EquipmentHistory]([ValidTo] ASC, [ValidFrom] ASC) WITH (DATA_COMPRESSION = PAGE);

