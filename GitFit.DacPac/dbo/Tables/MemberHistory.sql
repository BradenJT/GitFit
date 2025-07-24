CREATE TABLE [dbo].[MemberHistory] (
    [MemberId]              INT           NOT NULL,
    [GymId]                 INT           NOT NULL,
    [FirstName]             VARCHAR (50)  NOT NULL,
    [LastName]              VARCHAR (50)  NOT NULL,
    [Email]                 VARCHAR (100) NOT NULL,
    [Phone]                 VARCHAR (20)  NULL,
    [DateOfBirth]           DATE          NULL,
    [LastCheckInDate]       DATETIME      NULL,
    [JoinDate]              DATETIME      NOT NULL,
    [Status]                NVARCHAR (20) NOT NULL,
    [EmergencyContactName]  VARCHAR (100) NULL,
    [EmergencyContactPhone] VARCHAR (20)  NULL,
    [ChagneUser]            VARCHAR (100) NULL,
    [ValidFrom]             DATETIME2 (7) NOT NULL,
    [ValidTo]               DATETIME2 (7) NOT NULL
);


GO
CREATE CLUSTERED INDEX [ix_MemberHistory]
    ON [dbo].[MemberHistory]([ValidTo] ASC, [ValidFrom] ASC) WITH (DATA_COMPRESSION = PAGE);

