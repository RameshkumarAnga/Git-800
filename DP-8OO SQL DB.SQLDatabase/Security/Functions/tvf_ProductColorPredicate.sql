CREATE FUNCTION Security.tvf_ProductColorPredicate(@Color nvarchar(15))
RETURNS TABLE
WITH SCHEMABINDING
AS
RETURN --SELECT * FROM dbo.Product WHERE @Color IS NULL OR Color = @Color;
    SELECT 1 AS Result
    WHERE USER_NAME() = 'dbo' OR 
          (USER_NAME() = 'SalesReader' AND @Color ='Red') OR 
          USER_NAME() = @Color;

GO

