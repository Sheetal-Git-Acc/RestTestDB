-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_CustomerOps] 
	-- Add the parameters for the stored procedure here
	@CustomerID int= NULL,
	@RestaurantID int,
    @CustomerName nvarchar(100),
    @MobileNo nvarchar(10),
	@OperationType nvarchar(20) = ''
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	if @OperationType ='Insert'
	  BEGIN
	   insert into dbo.Customer(CustomerID,RestaurantID , CustomerName, MobileNo) values (@CustomerID,@RestaurantID,@CustomerName, @MobileNo)

	  END
	if @OperationType = 'Update'
	BEGIN
	   Update dbo.Customer SET CustomerName= @CustomerName,MobileNo= @MobileNo
	   where CustomerID=@CustomerID and RestaurantID = @RestaurantID
	   
	END

	 if @OperationType = 'Delete'
	  BEGIN
	   Delete from dbo.Customer    where CustomerID=@CustomerID and RestaurantID = @RestaurantID

	   
	   END
END
