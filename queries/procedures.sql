SELECT * FROM students;

CREATE or replace Procedure remove_student(student_id INT)
LANGUAGE plpgsql
AS
$$
    DECLARE
    s_id INT;

    BEGIN

        SELECT id INTO s_id from students WHERE id = student_id;
        DELETE FROM students WHERE id = s_id;

        RAISE NOTICE 'Successfully deleted!';
        
    END
$$;

CALL remove_student (6);