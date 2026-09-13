CREATE TABLE [SalesLT].[CustomerCopy] (
    [CustomerID]   INT            NULL,
    [NameStyle]    BIT            NULL,
    [Title]        NVARCHAR (MAX) NULL,
    [FirstName]    NVARCHAR (MAX) NULL,
    [MiddleName]   NVARCHAR (MAX) NULL,
    [LastName]     NVARCHAR (MAX) NULL,
    [Suffix]       NVARCHAR (MAX) NULL,
    [CompanyName]  NVARCHAR (MAX) NULL,
    [SalesPerson]  NVARCHAR (MAX) NULL,
    [EmailAddress] NVARCHAR (MAX) NULL,
    [Phone]        NVARCHAR (MAX) NULL,
    [PasswordHash] NVARCHAR (MAX) NULL,
    [PasswordSalt] NVARCHAR (MAX) NULL,
    [rowguid]      NVARCHAR (MAX) NULL,
    [ModifiedDate] DATETIME2 (7)  NULL
);


GO

