
-- 1. From the following table, write a SQL query to find all reviewers whose ratings contain a NULL value. Return reviewer name.
-- Sample table: reviewer
-- Sample table: rating

-- 2. From the following table, write a SQL query to find out who was cast in the movie 'Annie Hall'. Return actor first name, last name and role.
-- Sample table: actor
-- Sample table: movie_cast
-- Sample table : movie

-- 3. From the following table, write a SQL query to find the director who directed a movie that
-- featured a role in 'Eyes Wide Shut'. Return director first name, last name and movie title.
-- Sample table: director
-- Sample table: movie_direction
-- Sample table: movie_cast
-- Sample table: movie

-- 4. From the following tables, write a SQL query to find the director
-- of a movie that cast a role as Sean Maguire. Return director first name, last name and movie title.
-- Sample table: director
-- Sample table: movie_direction
-- Sample table: movie_cast
-- Sample table: movie

-- 5. From the following table, write a SQL query to find out which actors have not appeared in any movies between 1990 and 2000
-- (Begin and end values are included.). Return actor first name, last name, movie title and release year.
-- Sample table: actor
-- Sample table: movie_cast
-- Sample table: movie

-- 6. From the following table, write a SQL query to find the directors who have directed films in a variety of genres.
-- Group the result set on director first name, last name and generic title.
-- Sort the result-set in ascending order by director first name and last name.
-- Return director first name, last name and number of genres movies.
-- Sample table: director
-- Sample table: movie_direction
-- Sample table: genres
-- Sample table: movie_genres

-- 7. From the following table, write a SQL query to find the movies with year and genres. Return movie title, movie year and generic title. 
-- Sample table: movie
-- Sample table: genres
-- Sample table: movie_genres

-- 8. From the following tables, write a SQL query to find all the movies with year, genres, and name of the director.
-- Sample table: movie
-- Sample table: genres
-- Sample table: movie_genres
-- Sample table: director
-- Sample table: movie_direction

-- 9. From the following tables, write a SQL query to find the movies released before 1st January 1989.
-- Sort the result-set in descending order by date of release.
-- Return movie title, release year, date of release, duration, and first and last name of the director.
-- Sample table: movie
-- Sample table: director
-- Sample table: movie_direction

-- 10. From the following table, write a SQL query to calculate the average movie length and count the number of movies in each genre.
-- Return genre title, average time and number of movies for each genre. 
-- Sample table: movie
-- Sample table: genres
-- Sample table: movie_genres

-- 11. From the following table, write a SQL query to find movies with the shortest duration.
-- Return movie title, movie year, director first name, last name, actor first name, last name and role.
-- Sample table: movie
-- Sample table: actor
-- Sample table: director
-- Sample table: movie_director
-- Sample table : movie_cast

-- 12. From the following table, write a SQL query to find the years in which a movie received a rating of 3 or 4.
-- Sort the result in increasing order on movie year.
-- Sample table: movie
-- Sample table: rating

-- 13. From the following tables, write a SQL query to get the reviewer name, movie title, and
-- stars in an order that reviewer name will come first, then by movie title, and lastly by number of stars.
-- Sample table : movie
-- Sample table: rating
-- Sample table: reviewer

-- 14. From the following table, write a SQL query to find those movies that have at least one rating and received the most stars.
-- Sort the result-set on movie title. Return movie title and maximum review stars.
-- Sample table: movie
-- Sample table: rating

-- 15. From the following table, write a SQL query to find out which movies have received ratings.
-- Return movie title, director first name, director last name and review stars.
-- Sample table: movie
-- Sample table: rating
-- Sample table: movie_direction
-- Sample table: director

-- 16. From the following table, write a SQL query to find movies in which one or more actors have acted in more than one film.
-- Return movie title, actor first and last name, and the role.
-- Sample table: movie
-- Sample table: movie_cast
-- Sample table: actor

-- 17. From the following tables, write a SQL query to find the actor whose first name is 'Claire' and last name is 'Danes'.
-- Return director first name, last name, movie title, actor first name and last name, role.
-- Sample table: movie
-- Sample table: movie_cast
-- Sample table: actor
-- Sample table: director
-- Sample table: movie_direction

-- 18. From the following table, write a SQL query to find for actors whose films have been directed by them.
-- Return actor first name, last name, movie title and role.
-- Sample table: movie
-- Sample table: movie_cast'
-- Sample table: actor
-- Sample table: director
-- Sample table: movie_direction

-- 19. From the following tables, write a SQL query to find the cast list of the movie ‘Chinatown’. Return first name, last name
-- Sample table: movie
-- Sample table: movie_cast
-- Sample table: actor 

-- 20. From the following tables, write a SQL query to find those movies where actor’s first name is 'Harrison' and last name is 'Ford'.
-- Return movie title.
-- Sample table: movie
-- Sample table: movie_cast
-- Sample table: actor 

-- 21. From the following tables, write a SQL query to find the highest-rated movies.
-- Return movie title, movie year, review stars and releasing country. 
-- Sample table : movie
-- Sample table : rating

-- 22. From the following tables, write a SQL query to find the highest-rated ‘Mystery Movies’. Return the title, year, and rating.
-- Sample table: movie
-- Sample table: genres
-- Sample table: movie_genres
-- Sample table: rating

-- 23. From the following tables, write a SQL query to find the years when most of the ‘Mystery Movies’ produced.
-- Count the number of generic title and compute their average rating. Group the result set on movie release year, generic title.
-- Return movie year, generic title, number of generic title and average rating.
-- Sample table: movie
-- Sample table: genres
-- Sample table: movie_genres

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