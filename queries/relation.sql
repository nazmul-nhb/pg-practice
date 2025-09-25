create TABLE post (
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES students (id) on Delete set DEFAULT DEFAULT 1 NOT NULL
);

INSERT INTO
    post (title, user_id)
VALUES ('Hello Mars', 1),
    ('Hello World', 4),
    ('Hello Jupiter', 3),
    ('Hello Venus', 4),
    ('Hello Saturn', 2),
    ('Hello Earth', 1);

SELECT * from post;

DELETE FROM students WHERE id = 1;

DROP TABLE post;

-- Inner Join

SELECT
    post.id as id,
    title,
    first_name as user_name
FROM post
    JOIN students on post.user_id = students.id;

-- Same as before
SELECT
    p.id as id,
    title,
    first_name as user_name
FROM post AS p
    JOIN students AS s on p.user_id = s.id;

-- Left (outer) JOIN keeps all data from primary (left) table
-- Right (outer) JOIN keeps all data from secondary (related/right) table