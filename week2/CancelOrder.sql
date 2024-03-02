DROP PROCEDURE IF EXISTS CancelOrder;

DELIMITER //
CREATE PROCEDURE CancelOrder(IN order_id INT)
BEGIN
DELETE FROM ORDERS WHERE orderID = order_id;
SELECT CONCAT ("Order ", order_id, " is cancelled") AS 'Confirmation';
END//

DELIMITER ;

CALL CancelOrder(10000);