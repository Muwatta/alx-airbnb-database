# ALX Airbnb Database - Advanced SQL Queries

## Task 0: Write Complex Queries with Joins

This directory contains SQL scripts for advanced database querying and optimization techniques for the ALX Airbnb Database project.

### Files Description

#### joins_queries.sql
Contains three types of JOIN operations:

1. **INNER JOIN**: Retrieves all bookings with their respective users
   - Shows only records where both booking and user exist
   - Useful for finding active bookings with valid user information

2. **LEFT JOIN**: Retrieves all properties and their reviews (including properties with no reviews)
   - Shows all properties regardless of whether they have reviews
   - Helps identify properties that need more customer feedback

3. **FULL OUTER JOIN**: Retrieves all users and bookings
   - Shows users without bookings and bookings without linked users
   - Includes alternative implementation using UNION for MySQL compatibility

### Database Schema Assumptions

The queries assume the following table structure:
- `User` table with columns: user_id, first_name, last_name, email, phone_number
- `Booking` table with columns: booking_id, user_id, property_id, start_date, end_date, total_price, status
- `Property` table with columns: property_id, name, description, location, pricepernight
- `Review` table with columns: review_id, property_id, rating, comment, created_at

### Usage

Execute these queries in your preferred SQL database management tool or command line interface to analyze relationships between users, bookings, properties, and reviews in the Airbnb database.

### Learning Objectives Covered

- Master different types of SQL joins (INNER, LEFT, FULL OUTER)
- Understand when to use each join type based on business requirements
- Handle databases with different JOIN support capabilities