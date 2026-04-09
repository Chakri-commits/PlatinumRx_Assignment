-- HOTEL MANAGEMENT SYSTEM SCHEMA SETUP

CREATE TABLE users (
    user_id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(100),
    phone_number VARCHAR(20),
    mail_id VARCHAR(100),
    billing_address VARCHAR(255)
);

CREATE TABLE bookings (
    booking_id VARCHAR(50) PRIMARY KEY,
    booking_date DATETIME,
    room_no VARCHAR(50),
    user_id VARCHAR(50)
);

CREATE TABLE items (
    item_id INT PRIMARY KEY,
    item_name VARCHAR(100),
    item_rate VARCHAR(50)
);

CREATE TABLE booking_commercials (
    id INT PRIMARY KEY,
    booking_id INT,
    bill_id INT,
    bill_date DATE,
    item_id INT,
    item_quantity INT
);

-- Insert sample data (minimal for demonstration)

INSERT INTO users (user_id, name, phone_number, mail_id, billing_address) VALUES
(1, 'John Doe', '9999988888' 'john.doe@gmail.com', 'VR Colony'),
(2, 'Bob', '6308894220', 'bob@gmail.com', 'Kukatpally'),
(3, 'Alice', '6308894220', 'alice@gmail.com', 'Ashok Nagar'),
(4, 'Emma', '3377069845', 'emma@gmail.com', 'Secunderabad');

INSERT INTO bookings VALUES
(1, 1, 101, '2021-11-10'),
(2, 2, 102, '2021-11-12'),
(3, 3, 103, '2021-11-25'),
(4, 1, 104, '2021-12-21'),
(5, 4, 101, '2021-11-18');

INSERT INTO items (item_id, item_name, item_rate) VALUES
(1, 'Breakfast', '60'),
(2, 'Lunch', '200'),
(3, 'Dinner', '200'),
(4, 'Laundry', '350'),
(5, 'Spa', '280');

INSERT INTO booking_commercials VALUES
(1, 1, 1, 5, 15.00, '2021-11-16'),
(2, 1, 4, 2, 25.00, '2021-11-17'),
(3, 2, 2, 3, 20.00, '2021-11-19'),
(4, 2, 3, 2, 30.00, '2021-11-20'),
(5, 2, 5, 1, 100.00, '2021-11-21'),
(6, 3, 1, 4, 15.00, '2021-12-02'),
(7, 3, 3, 3, 30.00, '2021-12-03'),
(8, 4, 1, 6, 15.00, '2021-12-11'),
(9, 4, 4, 3, 25.00, '2021-12-12'),
(10, 5, 2, 2, 20.00, '2021-11-21');

--- End of Hotel Schema Setup Script
select * from users;
select * from rooms;    
select * from bookings;
select * from items;
select * from booking_commercials;
