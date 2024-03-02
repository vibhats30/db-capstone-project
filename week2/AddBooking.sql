DROP PROCEDURE IF EXISTS AddBooking;

delimiter //
CREATE PROCEDURE AddBooking(IN booking_id INT, IN customer_id INT, IN booking_date DATETIME, IN table_no INT)
BEGIN
INSERT INTO BOOKINGS(bookingID,tablenumber,bookingslot,customerid) VALUES (booking_id,table_no,booking_date,customer_id);
SELECT "New Booking Added" AS 'Confirmation';
END//
DELIMITER ;

CALL AddBooking(9,3,'2022-12-30',4);