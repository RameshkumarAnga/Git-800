CREATE TABLE [dbo].[Product] (
    [ProductID]              INT             NULL,
    [Name]                   NVARCHAR (MAX)  NULL,
    [ProductNumber]          NVARCHAR (MAX)  NULL,
    [Color]                  NVARCHAR (MAX)  NULL,
    [StandardCost]           MONEY           NULL,
    [ListPrice]              MONEY           NULL,
    [Size]                   NVARCHAR (MAX)  NULL,
    [Weight]                 DECIMAL (38, 6) NULL,
    [ProductCategoryID]      INT             NULL,
    [ProductModelID]         INT             NULL,
    [SellStartDate]          DATETIME2 (7)   NULL,
    [SellEndDate]            DATETIME2 (7)   NULL,
    [DiscontinuedDate]       DATETIME2 (7)   NULL,
    [ThumbnailPhotoFileName] NVARCHAR (MAX)  NULL,
    [rowguid]                NVARCHAR (MAX)  NULL,
    [ModifiedDate]           DATETIME2 (7)   NULL
);


GO

