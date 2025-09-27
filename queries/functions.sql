SELECT * FROM students;

CREATE Function count_students() 
RETURNS INT
LANGUAGE SQL
AS 
$$
 SELECT count(*) from students;
$$;

SELECT count_students ();

-- CREATE or replace can create a new one or replace the existing one

CREATE Function delete_student(student_id INT) 
RETURNS void
LANGUAGE SQL
AS
$$
DELETE FROM students WHERE id = student_id
$$;

SELECT delete_student (2)