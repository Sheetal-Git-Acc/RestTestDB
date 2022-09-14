-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_OrderTable]
	-- Add the parameters for the stored procedure here
	@OrderID int = NULL,
	@OrderDate datetime,
	@RestaurantID int,
	@MenuItemID int,
	@ItemQuantity int,
	@OrderAmount float,
	@DiningTableID int,
	@OperationType nvarchar(20)= ' '


	
--) OrderDate 
--2) RestaurantID
--3) MenuItemID
--4) ItemQuantity
--5) OrderAmount
--6) DiningTableID

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	if(@OperationType = 'Insert' AND @ItemQuantity>0)

	BEGIN
	  DECLARE @ODate DATE, @OAmount float
	  DECLARE @ItemPrice float;
	  SET @ItemPrice = (select ItemPrice from RestaurantMenuItem where MenuItemID=@MenuItemID);
	  set @OAmount= (@ItemQuantity * @ItemPrice);
	   set @ODate = GETDATE();
	INSERT INTO [dbo].[Orders]
           ([OrderDate]
           ,[RestaurantID]
           ,[MenuItemID]
           ,[ItemQuantity]
           ,[OrderAmount]
           ,[DiningTableID])
     VALUES
           (@ODate
           ,@RestaurantID
           ,@MenuItemID
           ,@ItemQuantity,
           @OrderAmount
           ,@DiningTableID)

		   UPDATE DiningTableTrack set TableStatus='Occupied' where DiningTableID=@DiningTableID
	END 
	if(@OperationType = 'Update')
	BEGIN
	   UPDATE [dbo].[Orders]
   SET [OrderDate] = @OrderDate
      ,[RestaurantID] = @RestaurantID
      ,[MenuItemID] = @MenuItemID
      ,[ItemQuantity] = @ItemQuantity
      ,[OrderAmount] = @OrderAmount
      ,[DiningTableID] = @DiningTableID
 WHERE OrderID =@OrderID and RestaurantID = @RestaurantID

	END

	if(@OperationType = 'Delete')
	BEGIN


	  
DELETE FROM [dbo].[Orders]
      WHERE OrderID = @OrderID and RestaurantID=@RestaurantID
	END

END
