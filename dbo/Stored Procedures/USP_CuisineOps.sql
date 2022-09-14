-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_CuisineOps]
	-- Add the parameters for the stored procedure here
	@CuisineID int = NULL,
	@RestaurantID int,
	@CuisineName nvarchar(50),
	@OperationType nvarchar(20) = ''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	if @OperationType = 'Insert'
	BEGIN

	 INSERT INTO dbo.Cuisine (CuisineID, RestaurantID, CuisineName) VALUES (@CuisineID,@RestaurantID, @CuisineName)	

	END

	  
	if @OperationType = 'Update'
	BEGIN
	   Update dbo.Cuisine SET CuisineName= @CuisineName 
	   where RestaurantID = @RestaurantID and CuisineID=@CuisineID
	   
	END

	 if @OperationType = 'Delete'
	  BEGIN
	   Delete from dbo.Cuisine where RestaurantID = @RestaurantID and CuisineID = @CuisineID

	   
	   END
	
END
