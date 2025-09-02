# Task 3: Seed the Database with Sample Data

## Overview

This task provides a `seed.sql` script to populate the database with **realistic sample data** for the ALX Airbnb-like application.  
The script covers users, properties, bookings, and payments to simulate real-world usage.

---

## Entities and Sample Data

- **Users**  
  Three users with unique IDs, names, emails, and password hashes.

- **Properties**  
  Three properties owned by different users, with location details and nightly prices.

- **Bookings**  
  Three bookings showing different statuses: *confirmed*, *pending*, and *cancelled*.

- **Payments**  
  Payments linked to bookings, including completed, pending, and refunded states.

---

## Insert Statements (seed.sql)

```sql
-- Insert sample users
INSERT INTO users (id, name, email, password_hash)
VALUES
    (1, 'Alice Johnson', 'alice@example.com', 'hashed_pw_1'),
    (2, 'Bob Smith', 'bob@example.com', 'hashed_pw_2'),
    (3, 'Charlie Brown', 'charlie@example.com', 'hashed_pw_3');

-- Insert sample properties
INSERT INTO properties (id, owner_id, title, description, location, price_per_night)
VALUES
    (1, 1, 'Cozy Apartment in Lagos', 'A lovely 2-bedroom apartment in the heart of Lagos.', 'Lagos, Nigeria', 150),
    (2, 2, 'Beach House in Accra', 'Perfect getaway by the beach with 3 bedrooms.', 'Accra, Ghana', 250),
    (3, 3, 'Modern Loft in Nairobi', 'Stylish loft with Wi-Fi and workspace.', 'Nairobi, Kenya', 120);

-- Insert sample bookings
INSERT INTO bookings (id, user_id, property_id, start_date, end_date, status)
VALUES
    (1, 2, 1, '2025-09-10', '2025-09-15', 'confirmed'),
    (2, 1, 2, '2025-10-01', '2025-10-07', 'pending'),
    (3, 3, 3, '2025-09-20', '2025-09-25', 'cancelled');

-- Insert sample payments
INSERT INTO payments (id, booking_id, amount, status, payment_date)
VALUES
    (1, 1, 750, 'completed', '2025-09-05'),
    (2, 2, 1750, 'pending', NULL),
    (3, 3, 600, 'refunded', '2025-09-18');
