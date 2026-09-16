CREATE SECURITY POLICY [Security].[ProductColorFilter]
    ADD FILTER PREDICATE [Security].[tvf_ProductColorPredicate]([Color]) ON [dbo].[Product]
    WITH (STATE = ON);


GO

