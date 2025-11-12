# Optimize Complex Queries

This task demonstrates how to **refactor complex queries** for better performance.

## Initial Query
Retrieve all bookings along with user, property, and payment details.

## Optimization Steps
1. Analyze query using `EXPLAIN`.
2. Identify slow joins or missing indexes.
3. Apply indexes on frequently joined columns: `user_id`, `property_id`, `booking_id`.
4. Refactor query where possible to reduce redundant joins.

## Outcome
- Reduced query execution time.
- Improved database performance for reporting and analytics.
