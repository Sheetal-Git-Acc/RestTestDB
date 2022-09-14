-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE USP_OrderYear
	-- Add the parameters for the stored procedure here
	 @RestaurantID int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	select SUM(o.OrderAmount)as TotalOrderAmount,o.RestaurantID, o.OrderDate ,r.RestaurantID from Orders o


inner join Restaurant r on r.RestaurantID = o.RestaurantID where o.RestaurantID = @RestaurantID

group by o.RestaurantID,o.OrderAmount,o.OrderDate,YEAR(o.OrderDate),r.RestaurantID
END
