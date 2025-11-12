# Partitioning Large Tables

This task demonstrates **table partitioning** to optimize queries on large datasets.

## Partitioning Strategy
- Partition the `bookings` table by `start_date`.
- Each partition stores bookings for a specific month or range.

## Performance Test
- Query bookings by date range on partitioned table vs original table.
- Measure improvements using `EXPLAIN` or `ANALYZE`.

## Outcome
- Faster queries on date-based filters.
- Reduced I/O overhead on large tables.
