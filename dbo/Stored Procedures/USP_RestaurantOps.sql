-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_RestaurantOps]
	-- Add the parameters for the stored procedure here
  @RestaurantId int = NULL,
  @RestaurantName nvarchar(200),
  @Address nvarchar(500),
  @MobileNo nvarchar(10),
  @OperationType nvarchar(20) =''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

	if(@OperationType= 'Select')
	BEGIN
	    Select RestaurantID, RestaurantName,@Address, MobileNo from dbo.Restaurant
	END

	  if(LEN(@MobileNo) = 10)
	    BEGIN
    -- Insert statements for procedure 
	if @OperationType ='Insert'
	  BEGIN
	   insert into dbo.Restaurant ( RestaurantName, Address, MobileNo) values ( @RestaurantName, @Address, @MobileNo)

	  END
	  END
	if @OperationType = 'Update'
	BEGIN
	   Update dbo.Restaurant SET RestaurantName= @RestaurantName, Address =@Address, MobileNo= @MobileNo
	   where RestaurantID = @RestaurantId
	   
	END

	 if @OperationType = 'Delete'
	  BEGIN
	   Delete from dbo.Restaurant where RestaurantID = @RestaurantId

	   
	   END


END
