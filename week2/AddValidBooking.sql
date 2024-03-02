DROP PROCEDURE IF EXISTS AddValidBooking;

delimiter //
CREATE PROCEDURE AddValidBooking(IN booking_date DATETIME, IN table_no INT)
BEGIN
DECLARE booking_ID INT;
SET autocommit=0;
SET booking_ID = (SELECT bookingID from Bookings where bookingSlot = booking_date and tableNumber = table_no);

START TRANSACTION;
INSERT INTO BOOKINGS(bookingID,bookingslot,tablenumber,customerid) VALUES (7,booking_date, table_no, 4);
	IF booking_ID IS NULL THEN 
		COMMIT;
		SELECT CONCAT("Table ", table_no, " is available and booked") AS 'Booking Status';
	ELSE
		ROLLBACK;
		SELECT CONCAT("Table ", table_no, " is already booked - booking cancelled") AS 'Booking Status';
	END IF;
END//
DELIMITER ;

CALL AddValidBooking("2022-12-17",6);
