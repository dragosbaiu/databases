drop database if exists imdb;
create database imdb;
use imdb;

create table movies (
	movie_id int auto_increment primary key,
    title varchar(100) not null,
    year int,
    producer varchar(100)
);

create table genres (
	genre_id int auto_increment primary key,
	name varchar (100) not null
);

create table genres_movies (
	movie_id int,
	genre_id int,
	primary key (movie_id, genre_id),
	foreign key (movie_id) references movies(movie_id),
	foreign key (genre_id) references genres(genre_id)
);

create table actors (
	actor_id int auto_increment primary key,
	name varchar(100) not null,
	surname varchar(100) not null,
	birthdate date
);


create table roles (
	movie_id int, 
	actor_id int,
	role varchar(100) not null,
	primary key (movie_id, actor_id),
	foreign key (movie_id) references movies(movie_id),
	foreign key (actor_id) references actors(actor_id)
);

