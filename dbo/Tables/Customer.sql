CREATE TABLE [dbo].[Customer] (
    [CustomerID]   INT            IDENTITY (1, 1) NOT NULL,
    [RestaurantID] INT            NOT NULL,
    [CustomerName] NVARCHAR (100) NOT NULL,
    [Mobileno]     NVARCHAR (10)  NOT NULL,
    CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED ([CustomerID] ASC)
);

