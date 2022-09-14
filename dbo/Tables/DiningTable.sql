CREATE TABLE [dbo].[DiningTable] (
    [DiningTableID] INT            IDENTITY (1, 1) NOT NULL,
    [RestaurantID]  INT            NOT NULL,
    [Location]      NVARCHAR (100) NOT NULL,
    CONSTRAINT [PK_DiningTable] PRIMARY KEY CLUSTERED ([DiningTableID] ASC),
    CONSTRAINT [FK_DiningTable_Restaurant] FOREIGN KEY ([RestaurantID]) REFERENCES [dbo].[Restaurant] ([RestaurantID])
);

