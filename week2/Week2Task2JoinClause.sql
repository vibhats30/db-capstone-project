SELECT a.customerID, CONCAT(b.firstName, " ", b.lastName) AS FullName,
c.orderID, c.totalCost,
d.Name as MenuName, e.Name as Course,f.Name as Cuisine
from Bookings a 
inner join Customers b on a.customerID = b.customerID
inner join Orders c on c.bookingID = a.bookingID
inner join Menu d on d.menuID = c.menuID
inner join Course e on e.courseID = d.courseID
inner join MenuType f on f.typeID = d.typeID
order by c.totalCost;
