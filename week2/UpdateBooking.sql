DROP PROCEDURE IF EXISTS UpdateBooking;

delimiter //
CREATE PROCEDURE UpdateBooking(IN booking_id INT, IN booking_date DATETIME)
BEGIN
UPDATE BOOKINGS SET bookingSlot = booking_date where bookingID = booking_id;
SELECT concat("Booking ", booking_id, " Updated") AS 'Confirmation';
END//
DELIMITER ;

CALL UpdateBooking(9,'2022-12-31');