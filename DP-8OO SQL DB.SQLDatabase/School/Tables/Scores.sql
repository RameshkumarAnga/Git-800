CREATE TABLE [School].[Scores] (
    [PupilID]      INT           NOT NULL,
    [Score]        SMALLINT      NOT NULL,
    [SetType]      VARCHAR (10)  NULL,
    [DateTaken]    DATE          NULL,
    [Maximum]      SMALLINT      NULL,
    [DateRecorded] DATETIME2 (7) NULL,
    [ScoresID]     INT           IDENTITY (1, 1) NOT NULL,
    PRIMARY KEY CLUSTERED ([ScoresID] ASC)
);


GO

