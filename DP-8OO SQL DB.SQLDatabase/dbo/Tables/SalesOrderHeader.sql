CREATE TABLE [dbo].[SalesOrderHeader] (
    [SalesOrderID]           INT            NULL,
    [RevisionNumber]         TINYINT        NULL,
    [OrderDate]              DATETIME2 (7)  NULL,
    [DueDate]                DATETIME2 (7)  NULL,
    [ShipDate]               DATETIME2 (7)  NULL,
    [Status]                 TINYINT        NULL,
    [OnlineOrderFlag]        BIT            NULL,
    [SalesOrderNumber]       NVARCHAR (MAX) NULL,
    [PurchaseOrderNumber]    NVARCHAR (MAX) NULL,
    [AccountNumber]          NVARCHAR (MAX) NULL,
    [CustomerID]             INT            NULL,
    [ShipToAddressID]        INT            NULL,
    [BillToAddressID]        INT            NULL,
    [ShipMethod]             NVARCHAR (MAX) NULL,
    [CreditCardApprovalCode] NVARCHAR (MAX) NULL,
    [SubTotal]               MONEY          NULL,
    [TaxAmt]                 MONEY          NULL,
    [Freight]                MONEY          NULL,
    [TotalDue]               MONEY          NULL,
    [Comment]                NVARCHAR (MAX) NULL,
    [rowguid]                NVARCHAR (MAX) NULL,
    [ModifiedDate]           DATETIME2 (7)  NULL
);


GO

