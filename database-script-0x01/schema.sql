-- schema.sql

-- Drop tables if they exist (for resets)
DROP TABLE IF EXISTS reservations CASCADE;
DROP TABLE IF EXISTS reviews CASCADE;
DROP TABLE IF EXISTS listings CASCADE;
DROP TABLE IF EXISTS users CASCADE;

-- =========================
-- USERS TABLE
-- =========================
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    full_name VARCHAR(100) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    password VARCHAR(200) NOT NULL,
    phone_number VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- =========================
-- LISTINGS TABLE
-- =========================
CREATE TABLE listings (
    listing_id SERIAL PRIMARY KEY,
    host_id INT NOT NULL,
    title VARCHAR(150) NOT NULL,
    description TEXT,
    price DECIMAL(10,2) NOT NULL CHECK (price >= 0),
    location VARCHAR(150) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (host_id) REFERENCES users(user_id) ON DELETE CASCADE
);

-- =========================
-- RESERVATIONS TABLE
-- =========================
CREATE TABLE reservations (
    reservation_id SERIAL PRIMARY KEY,
    listing_id INT NOT NULL,
    guest_id INT NOT NULL,
    check_in DATE NOT NULL,
    check_out DATE NOT NULL,
    status VARCHAR(20) DEFAULT 'pending',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (listing_id) REFERENCES listings(listing_id) ON DELETE CASCADE,
    FOREIGN KEY (guest_id) REFERENCES users(user_id) ON DELETE CASCADE,
    CHECK (check_out > check_in)
);

-- =========================
-- REVIEWS TABLE
-- =========================
CREATE TABLE reviews (
    review_id SERIAL PRIMARY KEY,
    reservation_id INT NOT NULL UNIQUE,
    rating INT NOT NULL CHECK (rating BETWEEN 1 AND 5),
    comment TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (reservation_id) REFERENCES reservations(reservation_id) ON DELETE CASCADE
);

-- =========================
-- INDEXES
-- =========================
CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_listings_location ON listings(location);
CREATE INDEX idx_reservations_status ON reservations(status);
