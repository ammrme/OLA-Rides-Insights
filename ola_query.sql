
SELECT 
    COUNT(*) AS driver_cancellations
FROM ola_clean_dataset
WHERE canceled_rides_by_driver = 'Yes';
SELECT
    SUM(CASE WHEN canceled_rides_by_customer = 'Yes' THEN 1 ELSE 0 END) 
        AS customer_cancellations,
    SUM(CASE WHEN canceled_rides_by_driver = 'Yes' THEN 1 ELSE 0 END) 
        AS driver_cancellations
FROM ola_clean_dataset;
SELECT 
    ROUND(AVG(customer_rating), 2) AS average_rating
FROM ola_clean_dataset
WHERE customer_rating IS NOT NULL;
SELECT
    booking_id,
    COUNT(vehicle_type) AS vehicle_count
FROM ola_clean_dataset
GROUP BY booking_id
ORDER BY vehicle_count DESC;
SELECT
    vehicle_type,
    ROUND(AVG(customer_rating), 2) AS average_rating,
    COUNT(*) AS total_rides
FROM ola_clean_dataset
GROUP BY vehicle_type
ORDER BY total_rides DESC;
SELECT
    HOUR(time) AS booking_hour,
    COUNT(booking_id) AS total_bookings
FROM ola_clean_dataset
GROUP BY booking_hour
ORDER BY booking_hour;
SELECT
    booking_id,
    SUM(customer_rating) AS sum_customer_rating
FROM ola_clean_dataset
GROUP BY booking_id
ORDER BY sum_customer_rating DESC;
SELECT
    vehicle_type,
    SUM(customer_rating) AS sum_customer_rating
FROM ola_clean_dataset
GROUP BY vehicle_type
ORDER BY sum_customer_rating DESC;
SELECT 
    COUNT(*) AS total_rides
FROM ola_clean_dataset;
SELECT
    vehicle_type,
    vehicle_images,
    ROUND(AVG(customer_rating), 2) AS average_rating,
    COUNT(*) AS total_rides
FROM ola_clean_dataset
GROUP BY vehicle_type, vehicle_images;
