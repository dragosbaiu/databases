   use imdb;
   show create table roles;

   alter table roles drop foreign key `1`;
   alter table roles drop foreign key `2`;
   
   alter table roles add constraint fk_roles_movie
       foreign key (movie_id) references movies(movie_id)
       on delete cascade;

   alter table roles add constraint fk_roles_actor
       foreign key (actor_id) references actors(actor_id)
       on delete cascade;
   
   show create table genres_movies;
   alter table genres_movies drop foreign key `1`;
   alter table genres_movies drop foreign key `2`;

   alter table genres_movies add constraint fk_gm_movie
	    foreign key (movie_id) references movies(movie_id)
	    on delete cascade;
	
   alter table genres_movies add constraint fk_gm_genre
	    foreign key (genre_id) references genres(genre_id)
	    on delete cascade;
   
   select * from roles;
   select * from genres_movies;
   delete from movies where movie_id = 2;
   
   select * from roles;            -- Titanic's 2 roles are gone
   select * from genres_movies;    -- Titanic's 2 genre links are gone
   select * from movies;           -- Titanic is gone