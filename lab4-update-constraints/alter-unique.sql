use imdb;

-- actors: add columns (safe to re-run)
alter table actors drop column if exists rip;
alter table actors add column if not exists passed_away date;

alter table actors drop column if exists biography;
alter table actors drop column if exists bio;
alter table actors add column biography text;
alter table actors rename column biography to bio;
alter table actors drop column bio;

drop table if exists roles2;

create table roles2 (
    actor_id int,
    movie_id int,
    role varchar(30),
    foreign key (actor_id) references actors(actor_id),
    foreign key (movie_id) references movies(movie_id)
);

-- no constraint yet: the duplicate gets in
insert into roles2 (actor_id, movie_id, role) values (1, 1, 'Cobb');
insert into roles2 (actor_id, movie_id, role) values (1, 1, 'Cobb');
select * from roles2;                       -- 2 identical rows

-- remove both copies, then put back a single one
delete from roles2 where actor_id = 1 and movie_id = 1 and role = 'Cobb';
insert into roles2 (actor_id, movie_id, role) values (1, 1, 'Cobb');

-- now the constraint can be added
alter table roles2 add constraint unique_record unique (actor_id, movie_id, role);

show create table roles2;
select * from roles2;