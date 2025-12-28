WITH HighSalary AS (
    SELECT emp_name, salary
    FROM employees
    WHERE salary > 70000
)
SELECT * FROM HighSalary;
