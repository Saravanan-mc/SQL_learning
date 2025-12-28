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
(115, 'Benjamin Hall', 'HR', 49000.00, '2020-09-07'),
(116, 'Mia Allen', 'Finance', 61000.00, '2017-05-26'),
(117, 'Lucas Young', 'IT', 73000.00, '2016-04-15'),
(118, 'Charlotte Hernandez', 'Marketing', 56000.00, '2019-11-20'),
(119, 'Henry King', 'HR', 47000.00, '2018-01-09'),
(120, 'Amelia Wright', 'Finance', 65000.00, '2020-07-28'),
(121, 'Alexander Scott', 'IT', 78000.00, '2014-02-17'),
(122, 'Evelyn Green', 'Marketing', 53000.00, '2021-06-03'),
(123, 'Daniel Adams', 'HR', 50000.00, '2017-09-12'),
(124, 'Harper Baker', 'Finance', 67000.00, '2016-10-21'),
(125, 'Matthew Nelson', 'IT', 80000.00, '2013-05-08'),
(126, 'Ella Carter', 'Marketing', 55000.00, '2022-02-14'),
(127, 'Joseph Mitchell', 'HR', 48000.00, '2019-03-29'),
(128, 'Abigail Perez', 'Finance', 69000.00, '2015-11-16'),
(129, 'Samuel Roberts', 'IT', 82000.00, '2012-08-27'),
(130, 'Emily Turner', 'Marketing', 57000.00, '2018-12-04');


SELECT now();

SELECT CURDATE();

SELECT CURTIME();


select YEAR(hire_date) AS YEAR from employees limit 2;

select MONTH(hire_date) AS MONTH from employees limit 2;

select DAY(hire_date) AS DAY from employees limit 2;



SELECT emp_name, YEAR(hire_date) AS hire_year
FROM employees limit 2;


SELECT emp_name, DATEDIFF(CURDATE(), hire_date) AS experience_days
FROM employees limit 2;


SELECT emp_name, DATE_ADD(hire_date, INTERVAL 1 YEAR) AS next_anniversary
FROM employees limit 2;


SELECT emp_name, DATE_ADD(hire_date, INTERVAL 1 WEEK) AS next_weak
FROM employees limit 2;


SELECT emp_name, DATE_ADD(hire_date, INTERVAL 1 DAY) AS next_day
FROM employees limit 2;
