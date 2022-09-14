CREATE TABLE [dbo].[Orders] (
    [OrderID]       INT        IDENTITY (1, 1) NOT NULL,
    [OrderDate]     DATETIME   NOT NULL,
    [RestaurantID]  INT        NOT NULL,
    [MenuItemID]    INT        NOT NULL,
    [ItemQuantity]  INT        NOT NULL,
    [OrderAmount]   FLOAT (53) NOT NULL,
    [DiningTableID] INT        NOT NULL,
    CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED ([OrderID] ASC),
    CONSTRAINT [FK_Order_DiningTable] FOREIGN KEY ([DiningTableID]) REFERENCES [dbo].[DiningTable] ([DiningTableID]),
    CONSTRAINT [FK_Order_Restaurant] FOREIGN KEY ([RestaurantID]) REFERENCES [dbo].[Restaurant] ([RestaurantID]),
    CONSTRAINT [FK_Order_RestaurantMenuItem] FOREIGN KEY ([MenuItemID]) REFERENCES [dbo].[RestaurantMenuItem] ([MenuItemID])
);

