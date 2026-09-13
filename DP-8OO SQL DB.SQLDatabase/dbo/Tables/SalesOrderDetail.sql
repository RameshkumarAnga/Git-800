CREATE TABLE [dbo].[SalesOrderDetail] (
    [SalesOrderID]       INT             NULL,
    [SalesOrderDetailID] INT             NULL,
    [OrderQty]           SMALLINT        NULL,
    [ProductID]          INT             NULL,
    [UnitPrice]          MONEY           NULL,
    [UnitPriceDiscount]  MONEY           NULL,
    [LineTotal]          DECIMAL (38, 6) NULL,
    [rowguid]            NVARCHAR (MAX)  NULL,
    [ModifiedDate]       DATETIME2 (7)   NULL
);


GO

