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
(106, 'Emma Taylor', 'HR', 48000.00, '2019-02-12'),
(107, 'Liam Anderson', 'IT', 70000.00, '2018-07-19'),
(108, 'Olivia Thomas', 'Finance', 62000.00, '2017-10-05'),
(109, 'Noah Martinez', 'Marketing', 52000.00, '2020-04-22'),
(110, 'Ava Garcia', 'IT', 68000.00, '2016-12-01'),
(111, 'William Rodriguez', 'HR', 46000.00, '2018-08-14'),
(112, 'Sophia Lopez', 'Finance', 64000.00, '2019-06-30'),
(113, 'James Lee', 'IT', 75000.00, '2015-03-18'),
(114, 'Isabella Walker', 'Marketing', 54000.00, '2021-01-11'),
(115, 'Benjamin Hall', 'HR', 49000.00, '2020-09-07');



CREATE VIEW ITs AS
SELECT emp_id, emp_name, salary
FROM employees
WHERE department = 'IT';
            

select *from ITs;






















