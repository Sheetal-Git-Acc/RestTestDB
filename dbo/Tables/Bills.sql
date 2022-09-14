CREATE TABLE [dbo].[Bills] (
    [BillsID]      INT        IDENTITY (1, 1) NOT NULL,
    [OrderID]      INT        NOT NULL,
    [RestaurantID] INT        NOT NULL,
    [BillAmount]   FLOAT (53) NOT NULL,
    [CustomerID]   INT        NOT NULL,
    CONSTRAINT [PK_Bills] PRIMARY KEY CLUSTERED ([BillsID] ASC),
    CONSTRAINT [FK_Bills_Bills] FOREIGN KEY ([BillsID]) REFERENCES [dbo].[Bills] ([BillsID]),
    CONSTRAINT [FK_Bills_Bills1] FOREIGN KEY ([BillsID]) REFERENCES [dbo].[Bills] ([BillsID]),
    CONSTRAINT [FK_Bills_Customer] FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customer] ([CustomerID]),
    CONSTRAINT [FK_Bills_Order] FOREIGN KEY ([OrderID]) REFERENCES [dbo].[Orders] ([OrderID]),
    CONSTRAINT [FK_Bills_Restaurant] FOREIGN KEY ([RestaurantID]) REFERENCES [dbo].[Restaurant] ([RestaurantID])
);

