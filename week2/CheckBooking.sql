DROP PROCEDURE IF EXISTS CheckBooking;

DELIMITER //

CREATE PROCEDURE CheckBooking()
BEGIN
SELECT MAX(quantity) as 'Max Quantity in Order' from orders;
END//

DELIMITER ;

CALL GetMaxQuantity();