CREATE TABLE [dbo].[Restaurant] (
    [RestaurantID]   INT            IDENTITY (1, 1) NOT NULL,
    [RestaurantName] NVARCHAR (200) NOT NULL,
    [Address]        NVARCHAR (500) NOT NULL,
    [MobileNo]       NVARCHAR (10)  NOT NULL,
    CONSTRAINT [PK_Restaurant] PRIMARY KEY CLUSTERED ([RestaurantID] ASC)
);

