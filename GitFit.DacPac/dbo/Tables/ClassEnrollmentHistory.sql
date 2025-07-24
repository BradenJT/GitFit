CREATE TABLE [dbo].[ClassEnrollmentHistory] (
    [EnrollmentId]   INT           NOT NULL,
    [ClassId]        INT           NOT NULL,
    [MemberId]       INT           NOT NULL,
    [EnrollmentDate] DATETIME2 (7) NOT NULL,
    [Status]         NVARCHAR (20) NOT NULL,
    [ChangeUser]     VARCHAR (100) NULL,
    [ValidFrom]      DATETIME2 (7) NOT NULL,
    [ValidTo]        DATETIME2 (7) NOT NULL
);


GO
CREATE CLUSTERED INDEX [ix_ClassEnrollmentHistory]
    ON [dbo].[ClassEnrollmentHistory]([ValidTo] ASC, [ValidFrom] ASC) WITH (DATA_COMPRESSION = PAGE);

