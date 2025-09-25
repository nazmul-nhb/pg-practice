SHOW timezone;

SELECT now();

CREATE table time_zone (
    ts TIMESTAMP without time zone,
    tsz TIMESTAMP with time zone
);

INSERT INTO time_zone VALUES (now(), now());

select * from time_zone;

-- Cast

SELECT now()::date;

SELECT now()::time;

SELECT to_char(now(), 'Month dd, yyyy');

SELECT CURRENT_DATE - INTERVAL '1 year, 5 months';

SELECT age (CURRENT_DATE, '1992-01-18');

SELECT *, age (CURRENT_DATE, dob) FROM students;

SELECT *, extract( year from dob ) as yob FROM students;