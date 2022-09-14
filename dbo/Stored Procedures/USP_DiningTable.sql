-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[USP_DiningTable] 
	-- Add the parameters for the stored procedure here
  @DiningTableId int = NULL,
  @RestaurantId int,
  @Location nvarchar(100),
  @OperationType nvarchar(20) =''
	AS


BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	if @OperationType ='Insert'
	  BEGIN
	   insert into dbo.DiningTable(DiningTableID,RestaurantId,Location) values (@DiningTableId,@RestaurantId, @Location)

	  END
	if @OperationType = 'Update'
	BEGIN
	   Update dbo.DiningTable SET Location= @Location 
       where DiningTableID = @DiningTableId and RestaurantID=@RestaurantId	   
	END

	 if @OperationType = 'Delete'
	  BEGIN
	   Delete from dbo.DiningTable where DiningTableID = @DiningTableId and RestaurantID = @RestaurantId

	   
	   END



END
