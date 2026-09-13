CREATE TABLE [School].[PupilsCopy] (
    [PupilID]           INT          NOT NULL,
    [FirstName]         VARCHAR (50) NULL,
    [LastName]          VARCHAR (50) NULL,
    [ClassID]           INT          NULL,
    [JSONNames]         JSON         NULL,
    [GivenNameFromJSON] AS           (CONVERT([nvarchar](50),json_value([JSONNames],'$."Given Name"'))) PERSISTED,
    CONSTRAINT [PK_PupilsCopy_PupilID] PRIMARY KEY CLUSTERED ([PupilID] ASC)
);


GO

CREATE NONCLUSTERED INDEX [idx_GivenNameFromJSON]
    ON [School].[PupilsCopy]([GivenNameFromJSON] ASC);


GO

CREATE JSON INDEX [idx_JSONNames]
    ON [School].[PupilsCopy] ([JSONNames])
    FOR ('$') WITH (DATA_COMPRESSION = PAGE);


GO

