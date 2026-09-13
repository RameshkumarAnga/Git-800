CREATE TABLE [School].[MSSQL_TemporalHistoryFor_462624691] (
    [PupilID]   INT           NOT NULL,
    [FirstName] VARCHAR (50)  NOT NULL,
    [LastName]  VARCHAR (50)  NOT NULL,
    [ClassID]   INT           NOT NULL,
    [ValidFrom] DATETIME2 (7) NOT NULL,
    [ValidTo]   DATETIME2 (7) NOT NULL
);


GO

CREATE CLUSTERED INDEX [ix_MSSQL_TemporalHistoryFor_462624691]
    ON [School].[MSSQL_TemporalHistoryFor_462624691]([ValidTo] ASC, [ValidFrom] ASC) WITH (DATA_COMPRESSION = PAGE);


GO

