SELECT * from hello_world WHERE hello_name = 'Hassan';

select count(*) from students;

SELECT * FROM students WHERE country IN ('USA', 'UK');

SELECT * FROM students WHERE age BETWEEN 20 and 23 ORDER BY age ASC;

SELECT * FROM students WHERE last_name LIKE '%son';

SELECT * FROM students WHERE first_name ILIKE 'm_c%';

-- LIMIT, OFFSET

SELECT * FROM students LIMIT 8 OFFSET 0;