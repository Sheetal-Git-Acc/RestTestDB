-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE USP_DayTableWise
	-- Add the parameters for the stored procedure here
@RestaurantID int
AS
BEGIN
	-- SET NOCOUNT ON 	added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
		select SUM(o.OrderAmount)as TotalOrderAmount,o.DiningTableID, o.OrderDate from Orders o


inner join Dining r on r.DiningTableID = o.DiningTableID and o.RestaurantID = @RestaurantID

group by o.RestaurantID,o.OrderAmount,o.OrderDate,convert(varchar,o.OrderDate,101),o.DiningTableID
END
