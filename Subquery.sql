use movie;

-- 1. From the following table, write a SQL query to find the actors who played a role in the movie 'Annie Hall'. Return all the fields of actor table. 
-- table: actor, movie_cast, movie
select * from actor;
select * from movie_cast;
select * from movie;

select *
from actor
where act_id in (select act_id from movie_cast where mov_id in (select mov_id from movie 
 where mov_title= 'Annie Hall')); 

-- 2. From the following tables, write a SQL query to find the director of a film that cast a role in 'Eyes Wide Shut'.
-- Return director first name, last name. table: director, movie_director, movie_cast, movie
select * from director;
select * from movie_director;
select * from movie_cast;
select * from movie;
select dir_fname, dir_lname
from director
where dir_id in (select dir_id from movie_direction where mov_id in (select mov_id from movie where mov_title = 'Eyes Wide Shut'));

-- 3. From the following table, write a SQL query to find those movies that have been released in countries other than the United Kingdom.
-- Return movie title, movie year, movie time, and date of release, releasing country.
-- Sample table: movie
select mov_title, mov_year, mov_time, mov_lang, mov_dt_rel, mov_rel_country
from movie
where mov_rel_country!= 'UK';

-- 4. From the following tables, write a SQL query to find for movies whose reviewer is unknown.
-- Return movie title, year, release date, director first name, last name, actor first name, last name.
-- Sample table: movie
-- Sample table: actor
-- Sample table: director
-- Sample table: movie_direction
-- Sample table: movie_cast
-- Sample table: reviewer
-- Sample table: rating
select movie.mov_title, movie.mov_dt_rel, director.dir_fname, director.dir_lname, actor.act_fname, actor.act_lname
from movie
join movie_cast on movie_cast.mov_id=movie.mov_id
join movie_director on movie_director.mov_id=movie_cast.mov_id
join rating on rating.mov_id=movie.mov_id
join reviewer on reviewer.rev_id=rating.rev_id
join director on director.dir_id=movie_director.dir_id
join actor on actor.act_id=movie_cast.act_id
where reviewer.rev_name is null;

-- =================================================================================================================================

-- 5. From the following tables, write a SQL query to find those movies directed by the director
-- whose first name is Woddy and last name is Allen. Return movie title.
-- Sample table: movie
-- Sample table: director
-- Sample table: movie_direction
select mov_title
from movie
where mov_id in (select mov_id from movie_director where dir_id in 
(select dir_id from director where dir_fname like'%Woddy%' or dir_lname like '%Allen%'));

-- 6. From the following tables, write a SQL query to determine those years in
-- which there was at least one movie that received a rating of at least three stars.
-- Sort the result-set in ascending order by movie year. Return movie year. 
-- Sample table: movie
-- Sample table: rating
select distinct movie.mov_year
from movie
join rating on rating.mov_id=movie.mov_id
where rating.rev_stars>3;

-- 7. From the following table, write a SQL query to search for movies that do not have any ratings. Return movie title.
-- Sample table: movie
-- Sample table: rating
select mov_title
from movie
where mov_id not in (select mov_id from rating);

-- 8. From the following table, write a SQL query to find those reviewers who have not given a rating to certain films. Return reviewer name.
-- Sample table: reviewer
-- Sample table: rating
select distinct rev_name
from reviewer
where rev_id in (select rev_id from rating where rev_stars is null);

-- 9. From the following tables, write a SQL query to find movies that have been reviewed by a reviewer and received a rating.
-- Sort the result-set in ascending order by reviewer name, movie title, review Stars. Return reviewer name, movie title, review Stars.
-- Sample table: reviewer
-- Sample table: rating
-- Sample table: movie
select reviewer.rev_name, movie.mov_title, rating.rev_stars
from reviewer
join rating on rating.rev_id=reviewer.rev_id
join movie on movie.mov_id=rating.mov_id
where reviewer.rev_name is not null and rating.rev_stars is not null
order by reviewer.rev_name, movie.mov_title, rating.rev_stars;

-- 10. From the following table, write a SQL query to find movies that have been reviewed by a reviewer and received a rating.
-- Group the result set on reviewer’s name, movie title. Return reviewer’s name, movie title.
-- Sample table: reviewer
-- Sample table: rating
-- Sample table : movie
select count(reviewer.rev_name), movie.mov_title
from reviewer
join rating on rating.rev_id=reviewer.rev_id
join movie on movie.mov_id=rating.mov_id
group by reviewer.rev_name, movie.mov_title
having count(reviewer.rev_name)>1;

-- 11. From the following tables, write a SQL query to find those movies, which have received highest number of stars.
-- Group the result set on movie title and sorts the result-set in ascending order by movie title.
-- Return movie title and maximum number of review stars.
-- Sample table: rating
-- Sample table: movie
select movie.mov_title, max(rating.rev_stars) as max
from movie
join rating on rating.mov_id=movie.mov_id
where rating.rev_stars is not null
group by movie.mov_title
order by movie.mov_title;

-- 12. From the following tables, write a SQL query to find all reviewers who rated the movie 'American Beauty'. Return reviewer name.
-- Sample table: reviewer
-- Sample table: rating
-- Sample table: movie
select rev_name
from reviewer
where rev_id in 
		(select rev_id from rating where mov_id in 
					(select mov_id from movie where mov_title ='American Beauty'));
                    
-- 13. From the following table, write a SQL query to find the movies that have not been reviewed by any reviewer body other than 'Paul Monks'.
-- Return movie title.
--  Sample table: reviewer
-- Sample table: rating
-- Sample table: movie
select mov_title
from movie
where mov_id in 
			(select mov_id from rating where rev_id  not in 
									(select rev_id from reviewer where rev_name ='Paul Monks'));

-- 14. From the following table, write a SQL query to find the movies with the lowest ratings.
-- Return reviewer name, movie title, and number of stars for those movies.
-- Sample table: reviewer
-- Sample table: rating
-- Sample table: movie
select reviewer.rev_name, movie.mov_title, rating.rev_stars
from reviewer, rating, movie
where rating.rev_id=reviewer.rev_id and rating.mov_id=movie.mov_id and rating.rev_stars=(select  min(rev_stars) from rating);
 
-- 15. From the following tables, write a SQL query to find the movies directed by 'James Cameron'. Return movie title.
-- Sample table: director
-- Sample table: movie_direction
-- Sample table: movie
select mov_title
from movie
where mov_id in 
		(select mov_id from movie_director where dir_id in 
						(select dir_id from director where dir_fname='James' and dir_lname= 'Cameron'));

-- 16. Write a query in SQL to find the movies in which one or more actors appeared in more than one film.
-- Sample table: movie
-- Sample table: movie_cast
-- Sample table: actor
select mov_title
from movie
where mov_id in 
			(SELECT mov_id from movie_cast where act_id in
								(select act_id from actor where act_id in 
										(select act_id from movie_cast group by act_id having count(*)>1)));




