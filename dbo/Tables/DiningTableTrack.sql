CREATE TABLE [dbo].[DiningTableTrack] (
    [DiningTableTrackID] INT            IDENTITY (1, 1) NOT NULL,
    [DiningTableID]      INT            NOT NULL,
    [TableStatus]        NVARCHAR (100) NOT NULL,
    CONSTRAINT [PK_DiningTableTrack] PRIMARY KEY CLUSTERED ([DiningTableTrackID] ASC),
    CONSTRAINT [FK_DiningTableTrack_DiningTable] FOREIGN KEY ([DiningTableID]) REFERENCES [dbo].[DiningTable] ([DiningTableID])
);

