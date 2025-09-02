# Database Normalization for Airbnb Clone

## Objective

Ensure that the database schema is normalized to the **Third Normal Form (3NF)**
by removing redundancies, ensuring atomicity, and maintaining data integrity.

---

## Step 1: First Normal Form (1NF)

**Rule:** Eliminate repeating groups; ensure atomic values.

- Each table has a **primary key**.
- All attributes contain **atomic values** (no arrays, no multivalued columns).
- Example adjustment:
  - Instead of storing multiple phone numbers in a single column, create a
    separate `user_phones` table.

---

## Step 2: Second Normal Form (2NF)

**Rule:** Eliminate partial dependencies (non-key attributes depending on part
of a composite key).

- If a table has a **composite primary key**, all non-key attributes must depend
  on the whole key.
- Adjustment:
  - For a `bookings` table with `(user_id, listing_id)` as a composite key,
    ensure fields like `user_email` or `listing_title` are **not stored here**
    (they belong in `users` and `listings`).

---

## Step 3: Third Normal Form (3NF)

**Rule:** Eliminate transitive dependencies (non-key attributes depending on
other non-key attributes).

- Ensure every non-key attribute depends only on the **primary key**.
- Adjustment:
  - If `listings` table had `city_name` and `country_name`, these should be
    moved into a separate `locations` table, linked via `location_id`.

---

## Final Normalized Schema (3NF)

- **users**: `id`, `name`, `email`, `password`, `created_at`
- **user_phones**: `id`, `user_id`, `phone_number`
- **listings**: `id`, `host_id (FK users)`, `title`, `description`, `price`,
  `location_id`
- **locations**: `id`, `city`, `country`
- **bookings**: `id`, `user_id (FK users)`, `listing_id (FK listings)`,
  `start_date`, `end_date`
- **reviews**: `id`, `user_id (FK users)`, `listing_id (FK listings)`, `rating`,
  `comment`

---

## Benefits of 3NF

- Eliminates redundancy.
- Improves data integrity.
- Makes schema easier to scale.

---

✅ Database schema is now normalized to **Third Normal Form (3NF)**.
