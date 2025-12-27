CREATE TABLE student (
    student_id INT,
    student_name VARCHAR(50),
    age INT,
    department VARCHAR(50),
    email VARCHAR(100)
);

-- Turn OFF auto commit
SET autocommit = 0;

-- Start transaction (optional in MySQL)
START TRANSACTION;

-- Insert data
INSERT INTO student VALUES (1, 'Rahul', 20, 'CS', 'rahul@gmail.com');

-- Create a savepoint
SAVEPOINT sp1;

-- Insert another record
INSERT INTO student VALUES (2, 'Anita', 21, 'IT', 'anita@gmail.com');

-- Rollback to savepoint (undo second insert only)
ROLLBACK TO sp1;

-- Update data
UPDATE student SET age = 21 WHERE student_id = 1;

-- Commit the transaction (save permanently)
COMMIT;

-- Turn ON auto commit
SET autocommit = 1;






