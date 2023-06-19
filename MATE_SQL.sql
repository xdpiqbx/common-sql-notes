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

SELECT *
FROM pupil
WHERE city = 'Kyiv'
ORDER BY birth_date ASC;

SELECT *
FROM book
ORDER BY publish_year DESC;

SELECT name, price
FROM dish
WHERE price > 100
ORDER BY name ASC;

SELECT title, publish_year
FROM book
WHERE publish_year >= 2012
ORDER BY title DESC;

SELECT *
FROM pupil
ORDER BY first_name ASC, last_name ASC;

SELECT name, weight, price
FROM dish
WHERE price BETWEEN 90 AND 125
ORDER BY price DESC, weight ASC;

SELECT *
FROM pupil
ORDER BY birth_date DESC
LIMIT 3;

SELECT first_name, last_name, birth_date
FROM staff
WHERE date_of_dismissal IS NULL
ORDER BY birth_date ASC
LIMIT 1;

SELECT first_name, last_name, birth_date
FROM staff
WHERE date_of_dismissal IS NOT NULL
ORDER BY birth_date DESC
LIMIT 1;

SELECT DISTINCT city
FROM pupil;

SELECT DISTINCT position
FROM staff
WHERE salary > 12000
ORDER BY position ASC;

SELECT id AS subject_id, name AS subject_name
FROM subject
WHERE name LIKE '_______%';

SELECT id AS dish_id, name AS dish_name, price AS dish_price
FROM dish
ORDER BY price DESC
LIMIT 3;

SELECT title AS book_title
FROM book
ORDER BY publish_year ASC
LIMIT 1;

SELECT MIN(calories) AS calories
FROM dish;

SELECT MIN(number_of_pages) AS number_of_pages
FROM book;

SELECT MIN(date_of_hiring) AS hiring_date
FROM staff;

SELECT MAX(birth_date) AS birth_date
FROM staff
WHERE date_of_dismissal IS NOT NULL;

SELECT MAX(salary) AS max_salary
FROM staff
WHERE date_of_dismissal IS NULL AND position = 'teacher';

SELECT last_name
FROM pupil
WHERE city != 'Kyiv'
ORDER BY last_name DESC
LIMIT 1;

SELECT AVG(calories) AS calories
FROM dish
WHERE price >= 100;

SELECT AVG(calories) AS calories
FROM dish
WHERE price >= 100;

SELECT AVG(weight) AS average_weight
FROM dish
WHERE calories < 300;

SELECT AVG(salary) AS average_salary
FROM staff
WHERE date_of_hiring < '2015-01-01';

SELECT SUM(calories) AS total_calories
FROM dish
WHERE name IN ('Baked potato', 'Crumble', 'Meatball');

SELECT SUM(price) AS total_price
FROM dish
WHERE name LIKE 'C%';

SELECT SUM(number_of_pages) AS total_number_of_pages
FROM book
WHERE publish_year > 2012;

SELECT COUNT(*) AS number_of_pupils
FROM pupil
WHERE city = 'Kyiv';

SELECT COUNT(*) AS non_working_staff
FROM staff
WHERE date_of_dismissal IS NOT NULL;

SELECT COUNT(*) AS number_of_books
FROM book
WHERE publish_year BETWEEN 2012 AND 2017;

SELECT COUNT(*) AS number_of_pupils
FROM pupil
WHERE father_phone IS NOT NULL;

SELECT COUNT(*) AS number_of_staff
FROM staff
WHERE date_of_dismissal IS NULL AND position = 'teacher' AND salary >= 9000;

SELECT COUNT(*) AS number_of_subjects
FROM subject
WHERE name LIKE 'E%';

SELECT city, COUNT(*) AS number_of_pupils
FROM pupil
GROUP BY city;

SELECT sex, COUNT(*) AS number_of_staff
FROM staff
WHERE date_of_dismissal IS NULL
GROUP BY sex;

SELECT first_name, COUNT(*) AS number_of_pupils
FROM pupil
GROUP BY first_name
ORDER BY first_name ASC;

SELECT position, MAX(salary) AS max_salary
FROM staff
GROUP BY position;

SELECT publish_year AS year, SUM(number_of_pages) AS number_of_pages
FROM book
WHERE publish_year BETWEEN 2011 AND 2015
GROUP BY publish_year
ORDER BY publish_year DESC;

SELECT first_name, last_name, name AS department_name
FROM employee
INNER JOIN department
ON employee.department_id = department.id
WHERE department_id IN (2, 7);

SELECT SUM(amount) AS TOTAL_AMOUNT
FROM product
INNER JOIN category
ON product.category_id = category.id
WHERE category.name = 'Seafood';

SELECT first_name, last_name, name
FROM employee
INNER JOIN department
ON employee.department_id = department.id
WHERE last_name LIKE '%n%' AND department_id IS NOT NULL;

SELECT category.name
FROM product
INNER JOIN category
ON product.category_id = category.id
WHERE price < 300
GROUP BY category.name;

SELECT name AS department_name, MAX(salary) AS max_salary
FROM employee
INNER JOIN department
ON employee.department_id = department.id
GROUP BY name;

SELECT category.name AS category_name, MIN(price) AS min_price
FROM product
INNER JOIN category
ON product.category_id = category.id
GROUP BY category_name;

SELECT name AS department_name, COUNT(*) AS number_of_employees
FROM employee
INNER JOIN department
ON employee.department_id = department.id
GROUP BY department_name;

SELECT category.name AS category_name, COUNT(*) AS number_of_products
FROM product
INNER JOIN category
ON product.category_id = category.id
WHERE category.name IN ('Meat', 'Grains')
GROUP BY category_name;

SELECT subject, AVG(mark) average_mark
FROM pupil
INNER JOIN scoreboard
ON scoreboard.pupil_id = pupil.id
WHERE city = 'Kyiv'
GROUP BY subject;

SELECT subject, AVG(mark) AS average_mark
FROM pupil
INNER JOIN scoreboard
ON scoreboard.pupil_id = pupil.id
WHERE first_name = 'Anna' AND last_name = 'Ivaniuk'
GROUP BY subject
ORDER BY average_mark DESC;

SELECT department.name AS department_name, AVG(salary) AS average_salary, COUNT(*) AS number_of_employees
FROM employee
INNER JOIN department
ON employee.department_id = department.id
GROUP BY department.name;

SELECT first_name, last_name, AVG(mark) AS average_mark
FROM pupil
INNER JOIN scoreboard
ON scoreboard.pupil_id = pupil.id
GROUP BY pupil.id;

SELECT subject, year, AVG(mark) AS average_mark
FROM pupil
INNER JOIN scoreboard
ON scoreboard.pupil_id = pupil.id
WHERE birth_date > '2005-01-01'
GROUP BY subject, year
ORDER BY subject ASC, year DESC;

SELECT department.name AS department_name, first_name, last_name
FROM employee
RIGHT JOIN department
ON employee.department_id = department.id;

SELECT department.name AS department_name, first_name, last_name
FROM employee
LEFT JOIN department
ON employee.department_id = department.id;

SELECT CONCAT(name, ': ', price, ' UAH') AS dish_information
FROM dish;

SELECT EXTRACT(YEAR FROM date_of_hiring) AS year, COUNT(*) AS number_of_staff
FROM staff
GROUP BY EXTRACT(YEAR FROM date_of_hiring);

SELECT COUNT(birth_date) AS number_of_pupils
FROM pupil
WHERE EXTRACT(MONTH FROM birth_date) = EXTRACT(MONTH FROM CURRENT_DATE);

SELECT CONCAT(product.name, ' - ', amount, ' units') AS product_information
FROM product
INNER JOIN category
ON product.category_id = category.id
WHERE category.name = 'Beverages';

SELECT first_name, last_name,
    DAY(date_of_dismissal) AS day,
    MONTH(date_of_dismissal) AS month,
    YEAR(date_of_dismissal) AS year
FROM staff
WHERE date_of_dismissal IS NOT NULL;

SELECT CONCAT(first_name, " ", last_name, ": ", subject, " - ", AVG(mark)) AS pupil_mark
FROM pupil
INNER JOIN scoreboard
ON scoreboard.pupil_id = pupil.id
WHERE pupil_id = 3
GROUP BY subject;

SELECT position, AVG(salary) AS average_salary
FROM staff
WHERE date_of_dismissal IS NULL
GROUP BY position
HAVING AVG(salary) > 10000;

SELECT category.name AS category_name, COUNT(product.name) AS number_of_products
FROM product
INNER JOIN category
ON product.category_id = category.id
GROUP BY category.name
HAVING COUNT(product.name) >= 4;

SELECT MONTH(hiring_date) AS month, COUNT(*) AS number_of_employees
FROM employee
GROUP BY MONTH(hiring_date)
HAVING COUNT(id) >= 3;

SELECT category.name AS category_name, SUM(amount) AS total_amount
FROM product
INNER JOIN category
ON product.category_id = category.id
GROUP BY category.name
HAVING SUM(amount) >= 80;

SELECT subject, AVG(mark) AS average_mark
FROM pupil
INNER JOIN scoreboard
ON scoreboard.pupil_id = pupil.id
WHERE first_name = 'Eugen' AND last_name = 'Tsven'
GROUP BY subject
HAVING AVG(mark) >= 10;

SELECT category.name AS category_name, MAX(price) AS max_price
FROM product
INNER JOIN category
ON product.category_id = category.id
GROUP BY category.name
HAVING COUNT(product.id) >= 3
ORDER BY max_price;

SELECT department.name AS department_name, SUM(salary) AS amount_of_money
FROM employee
INNER JOIN department
ON employee.department_id = department.id
GROUP BY department.name
HAVING COUNT(employee.id) > 3
ORDER BY SUM(salary) DESC;