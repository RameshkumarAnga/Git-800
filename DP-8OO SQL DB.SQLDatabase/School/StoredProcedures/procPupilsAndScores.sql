CREATE   PROC School.procPupilsAndScores
@PupilID INT =1 ,
@FirstName Varchar(50) OUTPUT,
@LastName varchar(50) OUTPUT
-- WITH RECOMPILE 
-- WITH ENCRYPTION
-- WITH EXECUTE AS CALLER
AS
BEGIN
    SET NOCOUNT ON;

    SELECT * FROM School.Pupils WHERE PupilID = @PupilID 
    
    -- SELECT * FROM School.Scores

    SELECT @FirstName = FirstName , 
    @LastName = LastName 
    FROM School.Pupils
    WHERE PupilID = @PupilID

    SET NOCOUNT OFF;
END

GO

