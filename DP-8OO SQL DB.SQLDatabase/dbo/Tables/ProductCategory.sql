CREATE TABLE [dbo].[ProductCategory] (
    [ProductCategoryID]       INT            NULL,
    [ParentProductCategoryID] INT            NULL,
    [Name]                    NVARCHAR (MAX) NULL,
    [rowguid]                 NVARCHAR (MAX) NULL,
    [ModifiedDate]            DATETIME2 (7)  NULL
);


GO

