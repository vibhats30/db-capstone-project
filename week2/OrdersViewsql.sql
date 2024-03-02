CREATE VIEW OrdersView AS
SELECT OrderID,quantity,totalCost from Orders
where quantity > 2;

select * from OrdersView;