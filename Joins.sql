use movie;

-- 1. From the following table, write a SQL query to find all reviewers whose ratings contain a NULL value. Return reviewer name.
-- Sample table: reviewer
-- Sample table: rating
select reviewer.rev_name
from reviewer
join rating on rating.rev_id=reviewer.rev_id
where rating.rev_stars is null;

-- 2. From the following table, write a SQL query to find out who was cast in the movie 'Annie Hall'. Return actor first name, last name and role.
-- Sample table: actor
-- Sample table: movie_cast
-- Sample table : movie
select actor.act_fname, actor.act_lname, movie_cast.role
from actor
join movie_cast on movie_cast.act_id=actor.act_id
join movie on movie.mov_id=movie_cast.mov_id
where movie.mov_title='Annie Hall';

-- 3. From the following table, write a SQL query to find the director who directed a movie that
-- featured a role in 'Eyes Wide Shut'. Return director first name, last name and movie title.
-- Sample table: director
-- Sample table: movie_direction
-- Sample table: movie_cast
-- Sample table: movie
select director.dir_fname, director.dir_lname, movie.mov_title
from director
join movie_director on movie_director.dir_id=director.dir_id
join movie_cast on movie_cast.mov_id=movie_director.mov_id
join movie on movie_cast.mov_id=movie.mov_id
where movie.mov_title='Eyes Wide Shut';

-- 4. From the following tables, write a SQL query to find the director
-- of a movie that cast a role as Sean Maguire. Return director first name, last name and movie title.
-- Sample table: director
-- Sample table: movie_direction
-- Sample table: movie_cast
-- Sample table: movie
select director.dir_fname, director.dir_lname, movie.mov_title
from director
join movie_director on movie_director.dir_id=director.dir_id
join movie_cast on movie_cast.mov_id=movie_director.mov_id
join movie on movie_cast.mov_id=movie.mov_id
where movie_cast.role='Sean Maguire';

-- 5. From the following table, write a SQL query to find out which actors have not appeared in any movies between 1990 and 2000
-- (Begin and end values are included.). Return actor first name, last name, movie title and release year.
-- Sample table: actor
-- Sample table: movie_cast
-- Sample table: movie
select actor.act_fname, actor.act_lname, movie.mov_title, movie.mov_year
from actor
join movie_cast on movie_cast.act_id=actor.act_id
join movie on movie.mov_id=movie_cast.mov_id
where movie.mov_year not between 1990 and 2000;

-- 6. From the following table, write a SQL query to find the directors who have directed films in a variety of genres.
-- Group the result set on director first name, last name and generic title.
-- Sort the result-set in ascending order by director first name and last name.
-- Return director first name, last name and number of genres movies.
-- Sample table: director
-- Sample table: movie_direction
-- Sample table: genres
-- Sample table: movie_genres
select director.dir_fname, director.dir_lname, genres.gen_title, count(movie_genres.gen_id) as count
from director
join movie_director on movie_director.dir_id=director.dir_id
join movie_genres on movie_genres.mov_id=movie_director.mov_id
join genres on genres.gen_id=movie_genres.gen_id
group by director.dir_fname, director.dir_lname, genres.gen_title
order by director.dir_fname asc, director.dir_lname asc;

-- 7. From the following table, write a SQL query to find the movies with year and genres. Return movie title, movie year and generic title. 
-- Sample table: movie
-- Sample table: genres
-- Sample table: movie_genres
select movie.mov_title, movie.mov_year, genres.gen_title
from movie
join movie_genres on movie_genres.mov_id=movie.mov_id
join genres on genres.gen_id=movie_genres.gen_id;

-- 8. From the following tables, write a SQL query to find all the movies with year, genres, and name of the director.
-- Sample table: movie
-- Sample table: genres
-- Sample table: movie_genres
-- Sample table: director
-- Sample table: movie_direction
select movie.mov_title, movie.mov_year, genres.gen_title, director.dir_fname, director.dir_lname
from movie
join movie_genres on movie_genres.mov_id=movie.mov_id
join movie_director on movie_director.mov_id=movie.mov_id
join director on director.dir_id=movie_director.dir_id
join genres on genres.gen_id=movie_genres.gen_id;

-- 9. From the following tables, write a SQL query to find the movies released before 1st January 1989.
-- Sort the result-set in descending order by date of release.
-- Return movie title, release year, date of release, duration, and first and last name of the director.
-- Sample table: movie
-- Sample table: director
-- Sample table: movie_direction
select movie.mov_title, movie. movie.mov_year, movie.mov_dt_rel, movie.mov_time, director.dir_fname, director.dir_lname
from movie
join movie_director on movie_director.mov_id=movie.mov_id
join director on director.dir_id=movie_director.dir_id
where movie.mov_dt_rel>'1989-01-01'
order by movie.mov_dt_rel desc;

-- 10. From the following table, write a SQL query to calculate the average movie length and count the number of movies in each genre.
-- Return genre title, average time and number of movies for each genre. 
-- Sample table: movie
-- Sample table: genres
-- Sample table: movie_genres
select genres.gen_title, avg(movie.mov_time) as avg, count(movie_genres.mov_id)
from movie
join movie_genres on movie_genres.mov_id=movie.mov_id
join genres on genres.gen_id=movie_genres.gen_id
group by genres.gen_title;

-- 11. From the following table, write a SQL query to find movies with the shortest duration.
-- Return movie title, movie year, director first name, last name, actor first name, last name and role.
-- Sample table: movie
-- Sample table: actor
-- Sample table: director
-- Sample table: movie_director
-- Sample table : movie_cast
select movie.mov_title, movie.mov_year, director.dir_fname, director.dir_lname, actor.act_fname, actor.act_fname, movie_cast.role
from movie
join movie_director on movie_director.mov_id=movie.mov_id
join movie_cast on movie_cast.mov_id=movie.mov_id
join director on director.dir_id=movie_director.dir_id
join actor on actor.act_id=movie_cast.act_id
where movie.mov_time in (select min(mov_time ) from movie);

-- 12. From the following table, write a SQL query to find the years in which a movie received a rating of 3 or 4.
-- Sort the result in increasing order on movie year.
-- Sample table: movie
-- Sample table: rating
select movie.mov_year
from movie
join rating on rating.mov_id=movie.mov_id
where rating.rev_stars=3 or rating.rev_stars=4
group by movie.mov_year
order by movie.mov_year;

-- 13. From the following tables, write a SQL query to get the reviewer name, movie title, and
-- stars in an order that reviewer name will come first, then by movie title, and lastly by number of stars.
-- Sample table : movie
-- Sample table: rating
-- Sample table: reviewer
select reviewer.rev_name, movie.mov_title, rating.rev_stars
from rating 
join movie on movie.mov_id=rating.mov_id
join reviewer on reviewer.rev_id=rating.rev_id
where reviewer.rev_name is not null ;

-- 14. From the following table, write a SQL query to find those movies that have at least one rating and received the most stars.
-- Sort the result-set on movie title. Return movie title and maximum review stars.
-- Sample table: movie
-- Sample table: rating
select movie.mov_title, max(rating.rev_stars) as max
from movie
join rating on rating.mov_id=movie.mov_id
group by movie.mov_title
having max(rating.rev_stars)>0
order by movie.mov_title;

-- 15. From the following table, write a SQL query to find out which movies have received ratings.
-- Return movie title, director first name, director last name and review stars.
-- Sample table: movie
-- Sample table: rating
-- Sample table: movie_direction
-- Sample table: director
select movie.mov_title, director.dir_fname, director.dir_lname, rating.rev_stars
from movie
join rating on rating.mov_id=movie.mov_id
join movie_director on movie_director.mov_id=movie.mov_id
join director on director.dir_id=movie_director.dir_id
where rating.rev_stars is not null;

-- 16. From the following table, write a SQL query to find movies in which one or more actors have acted in more than one film.
-- Return movie title, actor first and last name, and the role.
-- Sample table: movie
-- Sample table: movie_cast
-- Sample table: actor
select movie.mov_title, actor.act_fname, actor.act_lname, movie_cast.role
from movie
join movie_cast on movie_cast.mov_id=movie.mov_id
join actor on actor.act_id=movie_cast.act_id
where actor.act_id in 
					(select act_id from movie_cast group by act_id having count(*)>1);

-- 17. From the following tables, write a SQL query to find the actor whose first name is 'Claire' and last name is 'Danes'.
-- Return director first name, last name, movie title, actor first name and last name, role.
-- Sample table: movie
-- Sample table: movie_cast
-- Sample table: actor
-- Sample table: director
-- Sample table: movie_direction
select director.dir_fname, director.dir_lname, movie.mov_title, actor.act_fname, actor.act_lname, movie_cast.role
from movie
join movie_cast on movie_cast.mov_id=movie.mov_id
join movie_director on movie_director.mov_id=movie.mov_id
join actor on actor.act_id=movie_cast.act_id
join director on director.dir_id=movie_director.dir_id
where actor.act_fname='Claire' and actor.act_lname='Danes';

-- 18. From the following table, write a SQL query to find for actors whose films have been directed by them.
-- Return actor first name, last name, movie title and role.
-- Sample table: movie
-- Sample table: movie_cast'
-- Sample table: actor
-- Sample table: director
-- Sample table: movie_direction
select actor.act_fname, actor.act_lname, movie_cast.role
from actor
join movie_cast on movie_cast.act_id=actor.act_id
join movie on movie.mov_id=movie_cast.mov_id
join movie_director on movie_director.mov_id=movie_cast.mov_id
join director on director.dir_id=movie_director.dir_id
where actor.act_fname=director.dir_fname and actor.act_lname=director.dir_lname;

-- 19. From the following tables, write a SQL query to find the cast list of the movie ‘Chinatown’. Return first name, last name
-- Sample table: movie
-- Sample table: movie_cast
-- Sample table: actor 
select actor.act_fname, actor.act_lname
from actor
join movie_cast on movie_cast.act_id=actor.act_id
join movie on movie.mov_id=movie_cast.mov_id
where movie.mov_title='Chinatown';

-- 20. From the following tables, write a SQL query to find those movies where actor’s first name is 'Harrison' and last name is 'Ford'.
-- Return movie title.
-- Sample table: movie
-- Sample table: movie_cast
-- Sample table: actor 
select movie.mov_title
from movie
join movie_cast on movie_cast.mov_id=movie.mov_id
join actor on actor.act_id=movie_cast.act_id
where actor.act_fname='Harrison' and  actor.act_lname='Ford';

-- 21. From the following tables, write a SQL query to find the highest-rated movies.
-- Return movie title, movie year, review stars and releasing country. 
-- Sample table : movie
-- Sample table : rating
select  movie.mov_title, movie.mov_year, max(rating.rev_stars) as rev_stars, movie.mov_rel_country
from movie
join rating on rating.mov_id=movie.mov_id
group by movie.mov_title, movie.mov_year,movie.mov_rel_country
having max(rating.rev_stars) = (select max(rev_stars) from rating);

-- 22. From the following tables, write a SQL query to find the highest-rated ‘Mystery Movies’. Return the title, year, and rating.
-- Sample table: movie
-- Sample table: genres
-- Sample table: movie_genres
-- Sample table: rating
select  movie.mov_title, movie.mov_year, rating.rev_stars
from movie, rating
where rating.mov_id=movie.mov_id
and movie.mov_id in 
(select movie_genres.mov_id
from rating
join movie_genres on movie_genres.mov_id=rating.mov_id 
join genres on genres.gen_id=movie_genres.gen_id
where genres.gen_title='Mystery');

-- 23. From the following tables, write a SQL query to find the years when most of the ‘Mystery Movies’ produced.
-- Count the number of generic title and compute their average rating. Group the result set on movie release year, generic title.
-- Return movie year, generic title, number of generic title and average rating.
-- Sample table: movie
-- Sample table: genres
-- Sample table: movie_genres
-- Sample table: rating
select movie.mov_year, count(genres.gen_title) as gen_title, genres.gen_title , avg(rating.rev_stars) as avg 
from movie
join movie_genres on movie_genres.mov_id=movie.mov_id
join rating on rating.mov_id=movie.mov_id
join genres on genres.gen_id=movie_genres.gen_id
where genres.gen_title='Mystery'
group by movie.mov_year, gen_title;

-- 24. From the following tables, write a query in SQL to generate a report, which contain the fields movie title,
-- name of the female actor, year of the movie, role, movie genres, the director, date of release, and rating of that movie.
-- Sample table: movie
-- Sample table: genres
-- Sample table: movie_genres
-- Sample table: rating
-- Sample table: actor
-- Sample table: director
-- Sample table: movie_director
-- Sample table: movie_cast
select movie.mov_title, actor.act_fname, actor.act_lname, movie.mov_year, movie_cast.role, genres.gen_title, director.dir_fname, director.dir_lname,
movie.mov_dt_rel, rating.rev_stars
from movie
join movie_genres on movie_genres.mov_id=movie.mov_id
join rating on rating.mov_id=movie.mov_id
join movie_director on movie_director.mov_id=movie.mov_id
join movie_cast on movie_cast.mov_id=movie.mov_id
join genres on genres.gen_id=movie_genres.gen_id
join actor on actor.act_id=movie_cast.act_id
join director on director.dir_id=movie_director.dir_id
where actor.act_gender='F';









