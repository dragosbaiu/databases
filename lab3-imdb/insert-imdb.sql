use imdb;
show tables;

insert into movies(title, year, producer) values 
	('Inception', 2010, 'Emma Thomas'),
    ('Titanic', 1997, 'James Cameron'),
    ('The Dark Knight', 2008, 'Christopher Nolan'),
    ('Pulp Fiction', 1994, 'Lawrence Bender');

insert into actors(name, surname, birthdate) values 
	('Leonardo', 'DiCaprio', '1974-11-11'),
    ('Kate', 'Winslet', '1975-10-05'),
    ('Christian', 'Bale', '1974-01-30'),
    ('Heath', 'Ledger', '1979-04-04'),
    ('Samuel', 'Jackson', '1948-12-21');

insert into genres(name) values
	('Drama'), ('Thriller'), ('Sci-Fi'), ('Romance'), ('Action');

insert into roles (movie_id, actor_id, role) values
    (1, 1, 'Cobb'),
    (2, 1, 'Jack Dawson'),
    (2, 2, 'Rose'),
    (3, 3, 'Batman'),
    (3, 4, 'Joker'),
    (4, 5, 'Jules');

insert into genres_movies (movie_id, genre_id) values
    (1, 3), (1, 2),
    (2, 1), (2, 4),
    (3, 5), (3, 2),
    (4, 2);

select * from movies;
select * from actors;
select * from roles;

-- 1. Foreign key: movie 99 doesn't exist
-- insert into roles (movie_id, actor_id, role) values (99, 1, 'Ghost');

-- 2. Foreign key: actor 99 doesn't exist
-- insert into roles (movie_id, actor_id, role) values (1, 99, 'Ghost');

-- 3. Primary key: this role already exists
-- insert into roles (movie_id, actor_id, role) values (1, 1, 'Cobb again');

-- 4. NOT NULL: a movie without a title
-- insert into movies (title, year, producer) values (NULL, 2020, 'Nobody');

-- 5. NOT NULL: a role without a name
-- insert into roles (movie_id, actor_id, role) values (4, 1, NULL);

-- 6. Wrong type: text in an integer column
-- insert into movies (title, year, producer) values ('Test', 'abc', 'Nobody');
