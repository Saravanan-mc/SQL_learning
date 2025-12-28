CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE
);


INSERT INTO employees (emp_id, emp_name, department, salary, hire_date) VALUES
(101, 'John Smith', 'HR', 45000.00, '2018-06-15'),
(102, 'Alice Brown', 'IT', 65000.00, '2019-09-10'),
(103, 'Michael Johnson', 'Finance', 60000.00, '2017-03-25'),
(104, 'Sophia Davis', 'Marketing', 50000.00, '2020-01-05'),
(105, 'David Wilson', 'IT', 72000.00, '2016-11-18'),
(106, 'Emma Taylor', 'HR', 48000.00, '2019-02-12');


--️ Turn off auto-commit
SET autocommit = 0;

-- Start a transaction
START TRANSACTION;

-- Set transaction properties (optional)
SET TRANSACTION READ WRITE, ISOLATION LEVEL READ COMMITTED;

--️ Perform DML operations
INSERT INTO employees (emp_id, emp_name, department, salary, hire_date)
VALUES (601, 'Sophia', 'IT', 72000, '2025-01-15');

SAVEPOINT sp1;  -- create a savepoint

UPDATE employees SET salary = 75000 WHERE emp_id = 601;

--  Rollback to savepoint if needed
ROLLBACK TO sp1;  -- undo salary update but keep insert

-- Commit the transaction
COMMIT;  -- save changes permanently

--  Turn auto-commit back on
SET autocommit = 1;
























