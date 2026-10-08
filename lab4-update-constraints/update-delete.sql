-- Update
update movies
set producer = 'Christopher Nolan', year = 2010
where movie_id = 1;

-- Delete 
delete from roles where movie_id = 4 and actor_id = 5;

update movies 
set producer = 'IDK' where title = 'Titanic';

select * from roles;

delete from roles where movie_id = 4 and actor_id = 5;

delete from movies where movie_id = 1;