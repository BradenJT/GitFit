CREATE TABLE [dbo].[ClassHistory] (
    [ClassId]       INT            NOT NULL,
    [GymId]         INT            NOT NULL,
    [Name]          NVARCHAR (100) NOT NULL,
    [Description]   NVARCHAR (500) NULL,
    [InstructorId]  INT            NOT NULL,
    [StartDateTime] DATETIME2 (7)  NOT NULL,
    [EndDateTime]   DATETIME2 (7)  NOT NULL,
    [MaxCapacity]   INT            NOT NULL,
    [ChangeUser]    VARCHAR (100)  NULL,
    [ValidFrom]     DATETIME2 (7)  NOT NULL,
    [ValidTo]       DATETIME2 (7)  NOT NULL
);


GO
CREATE CLUSTERED INDEX [ix_ClassHistory]
    ON [dbo].[ClassHistory]([ValidTo] ASC, [ValidFrom] ASC) WITH (DATA_COMPRESSION = PAGE);

