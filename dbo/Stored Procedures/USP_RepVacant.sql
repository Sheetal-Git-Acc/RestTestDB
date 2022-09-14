-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE USP_RepVacant
	-- Add the parameters for the stored procedure here
  @RestaurantID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT TableStatus from dbo.DiningTableTrack right join DiningTable on DiningTable.DiningTableID = DiningTableTrack.DiningTableID
	and DiningTable.RestaurantID = @RestaurantID
END
