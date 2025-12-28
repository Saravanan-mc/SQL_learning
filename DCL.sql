CREATE TABLE student (
    student_id INT,
    student_name VARCHAR(50),
    age INT,
    department VARCHAR(50),
    email VARCHAR(100)
);

-- GRANT
GRANT SELECT ON student_dml TO user1;

GRANT INSERT ON student_dml TO user1;

GRANT UPDATE ON student_dml TO user1;

GRANT DELETE ON student_dml TO user1;

GRANT SELECT, INSERT, UPDATE ON student_dml TO user1;

GRANT ALL ON student_dml TO user1;

-- REVOKE
REVOKE SELECT ON student_dml FROM user1;

REVOKE INSERT, UPDATE ON student_dml FROM user1;

REVOKE ALL ON student_dml FROM user1;

-- CHECK PRIVILEGES
SHOW GRANTS FOR user1;





