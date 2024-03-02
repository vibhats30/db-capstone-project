DELIMITER //

CREATE PROCEDURE GetMaxQuantity()
BEGIN
SELECT MAX(quantity) as 'Max Quantity in Order' from orders;
END//

DELIMITER ;

CALL GetMaxQuantity();