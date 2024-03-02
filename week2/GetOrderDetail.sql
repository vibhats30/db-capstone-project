PREPARE GetOrderDetail FROM 'SELECT orderID,quantity,totalCost from orders where bookingID = ANY(select bookingID from bookings where customerID = ?)';

SET @id = 1;

EXECUTE GetOrderDetail using @id;