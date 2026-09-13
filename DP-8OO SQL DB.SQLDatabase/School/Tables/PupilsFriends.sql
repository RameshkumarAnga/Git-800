CREATE TABLE [School].[PupilsFriends] (
    [PupilID]  INT NOT NULL,
    [FriendID] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([PupilID] ASC, [FriendID] ASC),
    FOREIGN KEY ([FriendID]) REFERENCES [School].[Pupils] ([PupilID]),
    FOREIGN KEY ([PupilID]) REFERENCES [School].[Pupils] ([PupilID])
);


GO

