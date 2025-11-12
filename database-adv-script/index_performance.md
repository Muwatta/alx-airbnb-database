# Indexes for Optimization

This task demonstrates how to **create indexes** on high-usage columns to improve query performance.

## 📌 High-usage Columns
- Users: `email`, `last_name`
- Bookings: `user_id`, `property_id`, `start_date`
- Properties: `city`, `owner_id`

## 📘 Queries
```sql
CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_users_last_name ON users(last_name);
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_bookings_start_date ON bookings(start_date);
CREATE INDEX idx_properties_city ON properties(city);
CREATE INDEX idx_properties_owner_id ON properties(owner_id);
