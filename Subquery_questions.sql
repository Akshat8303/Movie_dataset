
-- 1. From the following table, write a SQL query to find the actors who played a role in the movie 'Annie Hall'. Return all the fields of actor table. 
-- Sample table: actor
-- Sample table: movie_cast
-- Sample table: movie

-- 2. From the following tables, write a SQL query to find the director of a film that cast a role in 'Eyes Wide Shut'.
-- Return director first name, last name.
-- Sample table: director
-- Sample table: movie_director
-- Sample table: movie_cast
-- Sample table: movie

-- 3. From the following table, write a SQL query to find those movies that have been released in countries other than the United Kingdom.
-- Return movie title, movie year, movie time, and date of release, releasing country.
-- Sample table: movie

-- 4. From the following tables, write a SQL query to find for movies whose reviewer is unknown.
-- Return movie title, year, release date, director first name, last name, actor first name, last name.
-- Sample table: movie
-- Sample table: actor
-- Sample table: director
-- Sample table: movie_direction
-- Sample table: movie_cast
-- Sample table: reviewer
-- Sample table: rating

-- 5. From the following tables, write a SQL query to find those movies directed by the director
-- whose first name is Woddy and last name is Allen. Return movie title.
-- Sample table: movie
-- Sample table: director
-- Sample table: movie_direction

-- 6. From the following tables, write a SQL query to determine those years in
-- which there was at least one movie that received a rating of at least three stars.
-- Sort the result-set in ascending order by movie year. Return movie year. 
-- Sample table: movie
-- Sample table: rating

-- 7. From the following table, write a SQL query to search for movies that do not have any ratings. Return movie title.
-- Sample table: movie
-- Sample table: rating

-- 8. From the following table, write a SQL query to find those reviewers who have not given a rating to certain films. Return reviewer name.
-- Sample table: reviewer
-- Sample table: rating

-- 9. From the following tables, write a SQL query to find movies that have been reviewed by a reviewer and received a rating.
-- Sort the result-set in ascending order by reviewer name, movie title, review Stars. Return reviewer name, movie title, review Stars.
-- Sample table: reviewer
-- Sample table: rating
-- Sample table: movie

-- 10. From the following table, write a SQL query to find movies that have been reviewed by a reviewer and received a rating.
-- Group the result set on reviewer’s name, movie title. Return reviewer’s name, movie title.
-- Sample table: reviewer
-- Sample table: rating
-- Sample table : movie

-- 11. From the following tables, write a SQL query to find those movies, which have received highest number of stars.
-- Group the result set on movie title and sorts the result-set in ascending order by movie title.
-- Return movie title and maximum number of review stars.
-- Sample table: rating
-- Sample table: movie

-- 12. From the following tables, write a SQL query to find all reviewers who rated the movie 'American Beauty'. Return reviewer name.
-- Sample table: reviewer
-- Sample table: rating
-- Sample table: movie

-- 13. From the following table, write a SQL query to find the movies that have not been reviewed by any reviewer body other than 'Paul Monks'.
-- Return movie title.
--  Sample table: reviewer
-- Sample table: rating
-- Sample table: movie

-- 14. From the following table, write a SQL query to find the movies with the lowest ratings.
-- Return reviewer name, movie title, and number of stars for those movies.
-- Sample table: reviewer
-- Sample table: rating
-- Sample table: movie

-- 15. From the following tables, write a SQL query to find the movies directed by 'James Cameron'. Return movie title.
-- Sample table: director
-- Sample table: movie_direction
-- Sample table: movie

-- 16. Write a query in SQL to find the movies in which one or more actors appeared in more than one film.
-- Sample table: movie
-- Sample table: movie_cast
-- Sample table: actor