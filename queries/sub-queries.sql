SELECT * from students WHERE blood_group = 'B+';

-- Scalar sub-query

-- Retrieve all the students whose age is greater that the highest age of student with blood group B+

SELECT *
from students
where
    age > (
        SELECT max(age) as "max_b+"
        from students
        WHERE
            blood_group = 'B+'
    )

-- A sub-query must return a single value (1 column - 1 row) if comparison operator requires one value