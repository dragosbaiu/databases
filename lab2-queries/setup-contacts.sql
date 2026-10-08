create database if not exists lab2;
use lab2;

drop table if exists contacts;

create table contacts (
    name VARCHAR(50),
    surname VARCHAR(50),
    phone VARCHAR(20),
    country VARCHAR(50),
    age INT,
    signup_date DATE,
    status VARCHAR(20)
);

insert into contacts (name, surname, phone, country, age, signup_date, status) values
    ('John', 'Doe', '+1-555-0101', 'USA', 28, '2025-01-15', 'Active'),
    ('Emma', 'Smith', '+44-20-7946-0912', 'UK', 34, '2025-02-20', 'Active'),
    ('Luca', 'Rossi', '+39-045-123456', 'Italy', 41, '2025-03-05', 'Inactive'),
    ('Marie', 'Dupont', '+33-1-2345-6789', 'France', 37, '2025-06-10', 'Active'),
    ('Anna', 'Smith', '+1-555-0199', 'USA', 23, '2026-01-12', 'Active');

select * from contacts;