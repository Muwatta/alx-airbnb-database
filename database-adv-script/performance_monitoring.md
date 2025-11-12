# Monitor and Refine Database Performance

This task focuses on continuously monitoring and improving database performance.

## Steps
1. Use `EXPLAIN`, `EXPLAIN ANALYZE`, or `SHOW PROFILE` to check query performance.
2. Identify bottlenecks:
   - Missing indexes
   - Slow joins
   - Large table scans
3. Implement improvements:
   - Add indexes
   - Refactor queries
   - Partition large tables
4. Re-test using `EXPLAIN ANALYZE` to verify improvements.

## Example
```sql
EXPLAIN ANALYZE SELECT * FROM bookings WHERE user_id = 1;
