use northwind_db;
show tables;

-- Q1
describe categories;
select * from categories
-- category_id, category_name, description, pictures

-- Q2
describe customers;
select contact_name from customers where country = 'France';

-- Q3
describe products;
select product_name, unit_price from products;

-- Q4
select * from products where discontinued = 1;

-- Q5
select * from products where units_in_stock < 30;

-- Q6
select * from products where units_in_stock > 30;