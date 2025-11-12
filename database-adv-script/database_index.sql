-- Indexes to optimize queries on high-usage columns

-- Users table
CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_users_last_name ON users(last_name);

-- Bookings table
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_bookings_start_date ON bookings(start_date);

-- Properties table
CREATE INDEX idx_properties_city ON properties(city);
CREATE INDEX idx_properties_owner_id ON properties(owner_id);

-- Measure query performance using EXPLAIN ANALYZE
-- Example queries:

-- Check performance before and after index on bookings.user_id
EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 1;

-- Check performance before and after index on bookings.start_date
EXPLAIN ANALYZE SELECT * FROM bookings WHERE start_date BETWEEN '2025-01-01' AND '2025-01-31';

-- Check performance before and after index on properties.city
EXPLAIN ANALYZE SELECT * FROM properties WHERE city = 'Lagos';
