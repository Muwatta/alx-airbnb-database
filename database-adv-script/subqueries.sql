-- Query 1: Properties with average rating greater than 4.0
SELECT property_id, AVG(rating) AS average_rating
FROM reviews
GROUP BY property_id
HAVING AVG(rating) > 4.0;

-- Query 2: Users who made more than 3 bookings
SELECT user_id, first_name, last_name
FROM users u
WHERE (
  SELECT COUNT(*) FROM bookings b WHERE b.user_id = u.user_id
) > 3;
