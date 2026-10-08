use imdb;

alter table actors add column if not exists passed_away date;

drop table if exists watched;
drop table if exists users;

create table users (
    user_id int auto_increment primary key,
    nickname varchar(40) not null
);

create table watched (
    user_id int not null,
    movie_id int not null,
    watched_on date not null default current_date,
    rating int,
    rated_on date,
    -- rating is optional (NULL), but if present it must be 0..10
    constraint chk_rating check (rating between 0 and 10),
    -- a user may rewatch a movie, but not twice on the same day
    constraint unique_watch unique (user_id, movie_id, watched_on),
    constraint fk_watched_user
        foreign key (user_id) references users(user_id) on delete cascade,
    constraint fk_watched_movie
        foreign key (movie_id) references movies(movie_id) on delete cascade
);

-- data
insert into users (nickname) values ('cinephile'), ('popcorn_fan'), ('night_owl');

-- movie ids 1, 3, 4: check yours with: select movie_id, title from movies;
insert into watched (user_id, movie_id, watched_on, rating, rated_on) values
    (1, 1, '2026-09-01', 9, '2026-09-02'),
    (1, 3, '2026-09-10', 10, '2026-09-10'),
    (1, 1, '2026-10-01', 8, '2026-10-01'),   
    (2, 1, '2026-09-15', NULL, NULL),      
    (2, 4, '2026-09-20', 7, '2026-09-21'),
    (3, 3, '2026-10-05', NULL, NULL);

select * from users;
select * from watched;

-- 1. rating too high
insert into watched (user_id, movie_id, watched_on, rating) values (1, 4, '2026-10-06', 11);

-- 2. rating too low
insert into watched (user_id, movie_id, watched_on, rating) values (1, 4, '2026-10-06', -1);

-- 3. user doesn't exist
insert into watched (user_id, movie_id, watched_on, rating) values (99, 1, '2026-10-06', 5);

-- 4. same user, movie and day as an existing row
insert into watched (user_id, movie_id, watched_on, rating) values (1, 1, '2026-09-01', 5);

-- 5. cascade on user: user 2 and their watched rows go
delete from users where user_id = 2;
select * from watched;

-- 6. cascade on movie: movie 3 and its watched rows go
delete from movies where movie_id = 3;
select * from watched;