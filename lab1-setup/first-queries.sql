create database if not exists practice;
use practice;

create table pets (
    name VARCHAR(30),
    species VARCHAR(20),
    age INT
);

insert into pets (name, species, age) values
    ('Rex', 'dog', 5),
    ('Mia', 'cat', 3);

select * from pets;