-- Initial query: all bookings with user, property, and payment details
SELECT 
    b.booking_id,
    u.user_id, u.first_name, u.last_name,
    p.property_id, p.property_name,
    pay.payment_id, pay.amount, pay.status
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
LEFT JOIN payments pay ON b.booking_id = pay.booking_id
WHERE b.start_date >= '2025-01-01' AND b.end_date <= '2025-12-31';

-- Analyze the query’s performance
EXPLAIN ANALYZE
SELECT 
    b.booking_id,
    u.user_id, u.first_name, u.last_name,
    p.property_id, p.property_name,
    pay.payment_id, pay.amount, pay.status
FROM bookings b
JOIN users u ON b.user_id = u.user_id
JOIN properties p ON b.property_id = p.property_id
LEFT JOIN payments pay ON b.booking_id = pay.booking_id
WHERE b.start_date >= '2025-01-01' AND b.end_date <= '2025-12-31';
