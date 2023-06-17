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








