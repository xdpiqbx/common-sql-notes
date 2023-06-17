SELECT first_name, last_name
FROM pupil
WHERE city = 'Kyiv';

SELECT title
FROM book
WHERE publish_year = 2012;

SELECT name
FROM dish
WHERE price > 80;

SELECT *
FROM dish
WHERE calories <= 300;

SELECT *
FROM pupil
WHERE NOT city = 'Kyiv';

SELECT first_name, last_name, birth_date
FROM staff
WHERE NOT position = 'teacher';

SELECT *
FROM staff
WHERE salary >= 10000;

SELECT first_name, last_name, birth_date
FROM pupil
WHERE birth_date < '2003-01-01';

SELECT title
FROM book
WHERE publish_year > 2013 AND number_of_pages <= 310;

SELECT *
FROM staff
WHERE sex = 'male' AND date_of_hiring > '2014-01-01' AND salary > 10000;

SELECT *
FROM book
WHERE publish_year = 2012 OR publish_year = 2015;

SELECT *
FROM pupil
WHERE city = 'Kyiv' OR city = 'Irpin' OR city = 'Brovary';

SELECT name
FROM dish
WHERE calories > 280 AND calories < 300;

SELECT title
FROM book
WHERE (publish_year <= 2012 OR publish_year >= 2017) AND number_of_pages > 240;

SELECT *
FROM staff
WHERE date_of_dismissal IS NOT NULL;

SELECT first_name, last_name
FROM staff
WHERE phone IS NULL;

SELECT *
FROM pupil
WHERE mother_phone IS NULL OR father_phone IS NULL;

SELECT first_name, last_name, birth_date
FROM pupil
WHERE first_name LIKE 'A%';

SELECT *
FROM pupil
WHERE first_name LIKE '_____';

SELECT first_name, last_name
FROM staff
WHERE last_name LIKE '%v';

SELECT *
FROM subject
WHERE name LIKE '%o%o%';

SELECT *
FROM staff
WHERE first_name LIKE 'I%' AND date_of_dismissal IS NULL;

SELECT *
FROM dish
WHERE calories BETWEEN 270 AND 340;

SELECT title, publish_year
FROM book
WHERE publish_year BETWEEN 2011 AND 2015;

SELECT *
FROM dish
WHERE price IN (90, 95, 125);

SELECT first_name, last_name, birth_date, city
FROM pupil
WHERE first_name IN ('Eugen', 'Anna', 'Volodymyr');

SELECT *
FROM book
WHERE title NOT LIKE 'F%';

SELECT first_name, last_name, birth_date, city
FROM pupil
WHERE birth_date NOT BETWEEN '2005-08-28' AND '2007-06-12';

SELECT *
FROM pupil
WHERE city NOT IN ('Kyiv', 'Irpin');
