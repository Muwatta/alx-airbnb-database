# Database Schema for Airbnb Clone

## Overview

This schema defines the structure for an Airbnb-like booking platform.  
It includes tables for users, property listings, reservations, and reviews.  
The schema enforces data integrity with primary keys, foreign keys, unique
constraints, and indexes.

---

## Schema Design

### **1. Users Table**

Stores information about all users (hosts and guests).

- `user_id` (PK) – Unique identifier for each user.
- `full_name` – User’s full name.
- `email` – Unique email address (used for login).
- `password` – Encrypted password.
- `phone_number` – Optional contact number.
- `created_at` – Timestamp of account creation.

---

### **2. Listings Table**

Stores properties listed by hosts.

- `listing_id` (PK) – Unique identifier for each listing.
- `host_id` (FK) – References `users.user_id`.
- `title` – Short title of the property.
- `description` – Detailed description of the property.
- `price` – Price per night (must be non-negative).
- `location` – Location of the property.
- `created_at` – Timestamp when the listing was created.

Constraints:

- Foreign key ensures each listing belongs to a valid host.
- `CHECK (price >= 0)` prevents invalid prices.

---

### **3. Reservations Table**

Stores booking records made by guests.

- `reservation_id` (PK) – Unique identifier for each reservation.
- `listing_id` (FK) – References `listings.listing_id`.
- `guest_id` (FK) – References `users.user_id`.
- `check_in` – Start date of stay.
- `check_out` – End date of stay (must be after `check_in`).
- `status` – Booking status (`pending`, `confirmed`, etc.).
- `created_at` – Timestamp of reservation creation.

Constraints:

- `CHECK (check_out > check_in)` ensures valid booking periods.
- Foreign keys enforce valid guest and listing references.

---

### **4. Reviews Table**

Stores reviews given by guests after completing a reservation.

- `review_id` (PK) – Unique identifier for each review.
- `reservation_id` (FK, UNIQUE) – Each reservation can only have one review.
- `rating` – Integer score between 1 and 5.
- `comment` – Optional review text.
- `created_at` – Timestamp when the review was added.

Constraints:

- `CHECK (rating BETWEEN 1 AND 5)` enforces valid ratings.

---

## Indexes

Indexes are created to improve query performance:

- `idx_users_email` → Speeds up lookups by email.
- `idx_listings_location` → Optimizes searches by location.
- `idx_reservations_status` → Helps filter reservations by status.

---

## How to Run

1. Open your SQL client (e.g., `psql`).
2. Run the script:

   ```bash
   \i schema.sql
   ```
