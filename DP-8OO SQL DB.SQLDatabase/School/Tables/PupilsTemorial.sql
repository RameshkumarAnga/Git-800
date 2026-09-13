CREATE TABLE [School].[PupilsTemorial] (
    [PupilID]   INT                                         NOT NULL,
    [FirstName] VARCHAR (50)                                NOT NULL,
    [LastName]  VARCHAR (50)                                NOT NULL,
    [ClassID]   INT                                         NOT NULL,
    [ValidFrom] DATETIME2 (7) GENERATED ALWAYS AS ROW START NOT NULL,
    [ValidTo]   DATETIME2 (7) GENERATED ALWAYS AS ROW END   NOT NULL,
    PRIMARY KEY NONCLUSTERED ([PupilID] ASC),
    PERIOD FOR SYSTEM_TIME ([ValidFrom], [ValidTo])
)
WITH (SYSTEM_VERSIONING = ON (HISTORY_TABLE=[School].[PupilsTemorialHistory], DATA_CONSISTENCY_CHECK=ON));


GO

