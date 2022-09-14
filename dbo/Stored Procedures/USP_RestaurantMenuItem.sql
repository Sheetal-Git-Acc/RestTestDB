-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Descriptionii.kl/,pm,>
-- ========================n=====================
CREATE PROCEDURE [dbo].[USP_RestaurantMenuItem]
	@MenuItemID int = NULL,
	@CuisineID int,
    @ItemName nvarchar(100),
    @ItemPrice float,
	@OperationType nvarchar(20)
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here

	if(@ItemPrice > 0.00)
	  BEGIN
	if @OperationType = 'Insert'
	  BEGIN

	   INSERT INTO dbo.RestaurantMenuItem(MenuItemID,CuisineID, ItemName, ItemPrice) VALUES (@MenuItemID, @CuisineID, @ItemName, @ItemPrice)
	   
	  END
	  END
	if @OperationType = 'Update'
	BEGIN
	   Update dbo.RestaurantMenuItem SET   ItemName= @ItemName, ItemPrice = @ItemPrice
	   where MenuItemID = @MenuItemID and CuisineID=@CuisineID
	   
	END

	 if @OperationType = 'Delete'
	  BEGIN
	   Delete from dbo.RestaurantMenuItem where MenuItemID = @MenuItemID and CuisineID=@CuisineID

	   
	   END

END
