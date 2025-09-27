CREATE Table delete_log (
    id SERIAL PRIMARY KEY,
    student_id INT,
    student_email VARCHAR(100),
    deleted_at TIMESTAMP with time zone DEFAULT now()
);

DROP Table delete_log;

-- INSERT INTO delete_log VALUES()

CREATE or replace Function create_delete_log() 
RETURNS TRIGGER
LANGUAGE plpgsql
AS 
$$
    BEGIN
        INSERT INTO delete_log (student_id, student_email) VALUES(OLD.id, OLD.email);

        RAISE NOTICE 'Deleted user info is logged successfully!';

        RETURN OLD;
    END
$$;

CREATE OR REPLACE TRIGGER delete_log_trigger
BEFORE DELETE ON students
FOR EACH ROW
EXECUTE FUNCTION create_delete_log();

SELECT delete_student (10);

SELECT * from students;

SELECT * from delete_log;