CREATE TABLE [dbo].[Cuisine] (
    [CuisineID]    INT           IDENTITY (1, 1) NOT NULL,
    [RestaurantID] INT           NULL,
    [CuisineName]  NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_Cuisine] PRIMARY KEY CLUSTERED ([CuisineID] ASC),
    CONSTRAINT [FK_Cuisine_Restaurant] FOREIGN KEY ([RestaurantID]) REFERENCES [dbo].[Restaurant] ([RestaurantID])
);


GO
CREATE NONCLUSTERED INDEX [IX_Cuisine]
    ON [dbo].[Cuisine]([CuisineName] ASC);

