drop database if exists lab3_keys;
create database lab3_keys;
use lab3_keys;

create table people (
    name varchar(100) not null,
    surname varchar(100) not null, 
    age int,
    primary key (name, surname)
);

create table degree (
	person_name varchar(100) not null,
	person_surname varchar(100) not null,
	degree_type varchar(100) not null,
	degree_subject varchar(100) not null,
	foreign key(person_name, person_surname) references people(name, surname)
);


-- Composite primary key tests
insert into people (name, surname, age) values ('John', 'Doe', 30);
insert into people (name, surname, age) values ('John', 'Smith', 25);   -- same name, different surname
-- insert into people (name, surname, age) values ('John', 'Doe', 40);     -- same name AND surname
-- insert into people (name, surname, age) values (NULL, 'Rossi', 20);     -- NULL name

-- Composite foreign key tests
insert into degree (person_name, person_surname, degree_type, degree_subject)
   -- values ('John', 'Doe', 'BSc', 'Computer Science');                  -- exists
-- insert into degree (person_name, person_surname, degree_type, degree_subject)
   -- values ('Mary', 'Jones', 'BSc', 'Physics');                         -- person doesn't exist
-- insert into degree (person_name, person_surname, degree_type, degree_subject)
   -- values (NULL, 'Doe', 'MSc', 'Maths');                               -- NULL part of the key
