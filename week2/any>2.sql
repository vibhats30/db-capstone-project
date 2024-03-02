SELECT name as MenuName from Menu
where menuid = ANY (select menuid from orders where quantity >2);