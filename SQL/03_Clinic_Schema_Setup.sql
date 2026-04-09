-- CLINIC MANAGEMENT SYSTEM SCHEMA SETUP

CREATE TABLE clinics (
    cid VARCHAR(50) PRIMARY KEY,
    clinic_name VARCHAR(100),
    city VARCHAR(100),
    state VARCHAR(100),
    country VARCHAR(100)
);

CREATE TABLE customer (
    uid VARCHAR(50) PRIMARY KEY,
    name VARCHAR(100),
    mobile VARCHAR(20)
);

CREATE TABLE clinic_sales (
    oid VARCHAR(50) PRIMARY KEY,
    uid VARCHAR(50),
    cid VARCHAR(50),
    amount DECIMAL(10,2),
    datetime DATETIME,
    sales_channel VARCHAR(50)
);

CREATE TABLE expenses (
    eid VARCHAR(50) PRIMARY KEY,
    cid VARCHAR(50),
    description VARCHAR(255),
    amount DECIMAL(10,2),
    datetime DATE
);

-- Sample data

INSERT INTO clinics VALUES (1, 'Online', 'Kurnool', 'Andhra Pradesh', 'India'),
    (2, 'In-person', 'Guntur', 'Andhra Pradesh', 'India'),
    (3, 'Phone', 'Kadapa', 'Andhra Pradesh', 'India');

INSERT INTO customer VALUES (1, 'Jon Doe', '9959022696'),
    (2, 'Chakri', '9959097135'),
    (3, 'Sanju', '7330919292');

INSERT INTO clinic_sales VALUES
('ord-00100-00100', 'bk-09f3e-95hj', 'cnc-0100001', 24999, '2021-09-23 12:03:22', 'sodat');

INSERT INTO expenses VALUES
('exp-0100-00100', 'cnc-0100001', 'first-aid supplies', 557, '2021-09-23 07:36:48');


--- End of Hotel Schema Setup Script
select * from clinics;
select * from customer;
select * from clinic_sales;
select * from expenses;
