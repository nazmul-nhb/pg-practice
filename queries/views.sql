CREATE VIEW not_bp_students AS
SELECT *
from students
where
    age > (
        SELECT max(age) as "max_b+"
        from students
        WHERE
            blood_group = 'B+'
    )

SELECT * FROM not_bp_students

-- Store complex queries as view to reuse later