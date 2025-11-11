# Entity-Relationship Diagram (ERD) – Airbnb Database

## Entities and Attributes

### User
- user_id (PK)
- first_name
- last_name
- email
- phone
- date_joined

### Property
- property_id (PK)
- host_id (FK → User.user_id)
- title
- description
- location
- price_per_night
- created_at

### Booking
- booking_id (PK)
- property_id (FK → Property.property_id)
- guest_id (FK → User.user_id)
- start_date
- end_date
- total_amount
- status

### Review
- review_id (PK)
- booking_id (FK → Booking.booking_id)
- rating
- comment
- review_date

### Payment
- payment_id (PK)
- booking_id (FK → Booking.booking_id)
- payment_method
- payment_date
- amount
- status

## Relationships

| Relationship | Type | Description |
|---------------|------|-------------|
| User ↔ Property | 1 → N | A user (host) can list many properties. |
| User ↔ Booking | 1 → N | A user (guest) can make many bookings. |
| Property ↔ Booking | 1 → N | A property can have many bookings. |
| Booking ↔ Review | 1 → 1 | Each booking has one review. |
| Booking ↔ Payment | 1 → 1 | Each booking has one payment record. |

## Diagram Summary

