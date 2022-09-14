CREATE TABLE [dbo].[RestaurantMenuItem] (
    [MenuItemID] INT            IDENTITY (1, 1) NOT NULL,
    [CuisineID]  INT            NOT NULL,
    [ItemName]   NVARCHAR (100) NOT NULL,
    [ItemPrice]  FLOAT (53)     NOT NULL,
    CONSTRAINT [PK_RestaurantMenuItem] PRIMARY KEY CLUSTERED ([MenuItemID] ASC),
    CONSTRAINT [FK_RestaurantMenuItem_Cuisine] FOREIGN KEY ([CuisineID]) REFERENCES [dbo].[Cuisine] ([CuisineID])
);

