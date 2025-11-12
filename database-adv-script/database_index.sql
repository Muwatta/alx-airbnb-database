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

-- After creating indexes, use EXPLAIN to check performance improvements
-- Example:
-- EXPLAIN SELECT * FROM bookings WHERE user_id = 1;
