create database movie;

use movie;

show tables;

-- 1. From the following table, write a SQL query to find the name and year of the movies. Return movie title, movie release year.
-- Sample table: movie
select mov_title, mov_year
from movie;

-- 2. From the following table, write a SQL query to find when the movie 'American Beauty' released. Return movie release year. 
-- Sample table: movie
select mov_year
from movie
where mov_title= 'American Beauty';

-- 3. From the following table, write a SQL query to find the movie that was released in 1999. Return movie title.
-- Sample table: movie
select mov_title
from movie
where mov_year=1999;

-- 4. From the following table, write a SQL query to find those movies, which were released before 1998. Return movie title.
-- Sample table: movie
select mov_title
from movie
where mov_year<1998;

-- 5. From the following tables, write a SQL query to find the name of all reviewers and movies together in a single list.
-- Sample table: movie
-- Sample table: reviewer
select rev_name
from reviewer
where rev_name is not null
union
(select mov_title
from movie);

SELECT reviewer.rev_name
FROM reviewer
UNION
(SELECT movie.mov_title
FROM movie);

-- 6. From the following table, write a SQL query to find all reviewers who have rated seven or more stars to their rating. Return reviewer name.
-- Sample table: reviewer
-- Sample table: rating	
select rev_name
from reviewer
join rating on rating.rev_id=reviewer.rev_id
where rev_name is not null and rating.rev_stars>=7;

-- 7. From the following tables, write a SQL query to find the movies without any rating. Return movie title.
-- Sample table: movie
-- Sample table: rating
select mov_title
from movie
where mov_id not in (select mov_id from rating);

-- 8. From the following table, write a SQL query to find the movies with ID 905 or 907 or 917. Return movie title.
-- Sample table: movie
select mov_title
from movie
where mov_id in (907, 905, 917);

-- 9. From the following table, write a SQL query to find the movie titles that contain
-- the word 'Boogie Nights'. Sort the result-set in ascending order by movie year. Return movie ID, movie title and movie release year. 
-- Sample table: movie
select mov_id, mov_title, mov_year
from movie
where mov_title=  'Boogie Nights';

-- 10. From the following table, write a SQL query to find those actors with the first name 'Woody' and the last name 'Allen'. Return actor ID.
-- Sample table: actor
select act_id
from actor
where act_fname= 'Woody' and act_lname= 'Allen';



