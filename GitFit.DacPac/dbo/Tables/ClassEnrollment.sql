CREATE TABLE [dbo].[ClassEnrollment] (
    [EnrollmentId]   INT                                         IDENTITY (1, 1) NOT NULL,
    [ClassId]        INT                                         NOT NULL,
    [MemberId]       INT                                         NOT NULL,
    [EnrollmentDate] DATETIME2 (7)                               NOT NULL,
    [Status]         NVARCHAR (20)                               DEFAULT ('Enrolled') NOT NULL,
    [ChangeUser]     VARCHAR (100)                               NULL,
    [ValidFrom]      DATETIME2 (7) GENERATED ALWAYS AS ROW START NOT NULL,
    [ValidTo]        DATETIME2 (7) GENERATED ALWAYS AS ROW END   NOT NULL,
    PRIMARY KEY CLUSTERED ([EnrollmentId] ASC),
    FOREIGN KEY ([ClassId]) REFERENCES [dbo].[Class] ([ClassId]),
    FOREIGN KEY ([MemberId]) REFERENCES [dbo].[Member] ([MemberId]),
    PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=[dbo].[ClassEnrollmentHistory], DATA_CONSISTENCY_CHECK=ON));

