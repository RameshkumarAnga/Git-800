CREATE TABLE [School].[PupilsTemorialHistory] (
    [PupilID]   INT           NOT NULL,
    [FirstName] VARCHAR (50)  NOT NULL,
    [LastName]  VARCHAR (50)  NOT NULL,
    [ClassID]   INT           NOT NULL,
    [ValidFrom] DATETIME2 (7) NOT NULL,
    [ValidTo]   DATETIME2 (7) NOT NULL
);


GO

CREATE CLUSTERED INDEX [ix_PupilsTemorialHistory]
    ON [School].[PupilsTemorialHistory]([ValidTo] ASC, [ValidFrom] ASC) WITH (DATA_COMPRESSION = PAGE);


GO

