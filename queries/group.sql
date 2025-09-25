SELECT country from students GROUP BY country;

SELECT country, count(*) from students GROUP BY country;

SELECT country, count(*), avg(age) as avg_age
from students
GROUP BY
    country;

SELECT country, avg(age) as avg_age
from students
GROUP BY
    country
HAVING
    avg(age) >= 22;

SELECT extract(
        year
        from dob
    ) as birth_year, count(*) as student_count
FROM students
GROUP BY
    birth_year;