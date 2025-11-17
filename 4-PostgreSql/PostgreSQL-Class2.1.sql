SELECT * FROM actors;
SELECT * FROM genres;

SELECT * FROM movies
WHERE title = 'Alien';

--Find all actors with DiCaprio
SELECT * FROM actors
WHERE last_name = 'DiCaprio';

--Find all directors with first name "M"
SELECT * FROM directors
WHERE first_name LIKE 'M%'; -- %M% for middle and %M for the end


--Find all actors by nationality
SELECT * FROM actors
WHERE nationality = 'Australian';

--Find all actors with birth date after 1980-01-01
SELECT * FROM actors
WHERE birth_date > '1980-01-01';

--Find all actors with birth date that is not 1980-01-01
SELECT * FROM actors
WHERE birth_date <> '1980-01-01';

--Find all movies with "R" rating
SELECT * FROM movies
WHERE rating = 'R';

--Find movies where plot_summary contains the word "deadly"
SELECT * FROM movies 
WHERE plot_summary ILIKE '%Deadly%'; --ILIKE case insensitive


--SORTING DATA
-- Find all genres sorted by name A-Z
SELECT * FROM genres
ORDER BY name; --DESC will sort them by descending order

--Find all movies whose title starts with "A" sorted by rating
SELECT * FROM movies
WHERE title LIKE 'A%'
ORDER BY rating;

--Find all movies whose title starts with "A" sorted by rating
SELECT * FROM movies
WHERE title LIKE 'A%'
ORDER BY duration_minutes DESC;

--Find all movies where language is English where budget is ascending
SELECT * FROM movies
WHERE language = 'English'
ORDER BY budget;

--Find all movies released after January 1, 2010 ordered by release date in ascending order
SELECT * FROM movies
WHERE release_date > '2010-01-01'
ORDER BY release_date;














