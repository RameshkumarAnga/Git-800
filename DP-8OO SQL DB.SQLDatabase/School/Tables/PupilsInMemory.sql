CREATE TABLE [School].[PupilsInMemory] (
    [PupilID]   INT          NOT NULL,
    [FirstName] VARCHAR (50) NOT NULL,
    [LastName]  VARCHAR (50) NOT NULL,
    [ClassID]   INT          NOT NULL,
    PRIMARY KEY NONCLUSTERED ([PupilID] ASC)
);


GO

