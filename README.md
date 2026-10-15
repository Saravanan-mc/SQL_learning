# 🗄️ SQL_learning — Complete SQL Practice Repository

![SQL](https://img.shields.io/badge/Language-SQL-blue?style=for-the-badge&logo=postgresql&logoColor=white)
![Database](https://img.shields.io/badge/Database-Learning-orange?style=for-the-badge)
![Topics](https://img.shields.io/badge/Topics-20%2B-brightgreen?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Learning%20%26%20Practice-purple?style=for-the-badge)

Welcome to **SQL_learning**, a structured collection of SQL scripts and practical examples covering database fundamentals, data manipulation, queries, functions, joins, subqueries, Common Table Expressions (CTEs), window functions, and more.

This repository is designed to strengthen SQL skills through hands-on practice and organized examples using tables such as employees and students.

Whether you are learning SQL for the first time or revising database concepts for interviews, this repository can serve as a practical reference.

## 🎯 Learning Objectives

- Understand relational database fundamentals.
- Create and manage database tables.
- Insert, update, delete, and retrieve data.
- Filter and sort query results.
- Use SQL operators and built-in functions.
- Combine data from multiple tables.
- Write subqueries and CTEs.
- Work with transactions and database permissions.
- Explore views, indexes, and stored procedures.
- Practise analytical queries using window functions.

## 📚 Topics Covered

| No. | SQL Topic | File |
|---:|---|---|
| 1 | Data Definition Language (DDL) | [`DDL.sql`](DDL.sql) |
| 2 | Data Manipulation Language (DML) | [`DML.sql`](DML.sql) |
| 3 | Data Control Language (DCL) | [`DCL.sql`](DCL.sql) |
| 4 | Transaction Control Language (TCL) | [`TCL.sql`](TCL.sql) |
| 5 | Aggregate Functions | [`Aggregate.sql`](Aggregate.sql) |
| 6 | Mathematical Functions | [`Math_functions.sql`](Math_functions.sql) |
| 7 | String Functions | [`String.sql`](String.sql) |
| 8 | Date and Time Functions | [`Date_time_function.sql`](Date_time_function.sql) |
| 9 | Comparison Operators | [`comparison.sql`](comparison.sql) |
| 10 | Logical Operators | [`logical_operators.sql`](logical_operators.sql) |
| 11 | Sorting Results | [`orderby.sql`](orderby.sql) |
| 12 | Grouping and Filtering Groups | [`groupby_and_having.sql`](groupby_and_having.sql) |
| 13 | Joins | [`joins.sql`](joins.sql) |
| 14 | Subqueries | [`Subquery.sql`](Subquery.sql) |
| 15 | Common Table Expressions (CTEs) | [`cte.sql`](cte.sql) |
| 16 | Views | [`view.sql`](view.sql) |
| 17 | Indexes | [`index.sql`](index.sql) |
| 18 | Stored Procedures and Functions | [`case_function_procedure.sql`](case_function_procedure.sql) |
| 19 | LIMIT, OFFSET, and DISTINCT | [`limit_offset_distinct.sql`](limit_offset_distinct.sql) |
| 20 | Window Functions | [`window.sql`](window.sql) |
| 21 | Date-to-Age Calculations | [`date_to_age.sql`](date_to_age.sql) |

*The table maps the topics to the filenames in your repository. Exact syntax and feature support depend on the database engine used by each script.*

## 🗂️ Repository Structure

```text
SQL_learning/
│
├── Aggregate.sql
├── DCL.sql
├── DDL.sql
├── DML.sql
├── Date_time_function.sql
├── Math_functions.sql
├── String.sql
├── Subquery.sql
├── TCL.sql
├── case_function_procedure.sql
├── comparison.sql
├── cte.sql
├── date_to_age.sql
├── groupby_and_having.sql
├── index.sql
├── joins.sql
├── limit_offset_distinct.sql
├── logical_operators.sql
├── orderby.sql
├── view.sql
├── window.sql
│
└── README.md
```

## ⚙️ Prerequisites

To practise the SQL scripts, you need:

- A relational database system compatible with the SQL syntax in the scripts.
- A database client or SQL editor.
- Basic familiarity with tables, rows, columns, and data types.

Popular database options include:

- [MySQL](https://dev.mysql.com/downloads/)
- [PostgreSQL](https://www.postgresql.org/download/)
- [SQLite](https://www.sqlite.org/download.html)
- [SQL Server](https://www.microsoft.com/en-us/sql-server)

**Important:** SQL dialects differ. Features such as stored procedures, date calculations, permissions, and pagination syntax may require adjustments for your chosen database.

## 🚀 Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/Saravanan-mc/SQL_learning.git
```

### 2. Navigate to the repository

```bash
cd SQL_learning
```

### 3. Choose a SQL file

Open a script such as `DDL.sql` or `DML.sql` in your preferred database editor.

### 4. Connect to your database

Create or select a practice database, then execute the relevant SQL statements in your database client.

For example, in MySQL, you can create a practice database with:

```sql
CREATE DATABASE sql_learning;

USE sql_learning;
```

Run the scripts in the order required by their dependencies. Some scripts create tables, while others expect those tables to exist already.

## 💻 SQL Examples

### 1. Create a table — DDL

```sql
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(10, 2)
);
```

### 2. Insert records — DML

```sql
INSERT INTO employees
    (employee_id, employee_name, department, salary)
VALUES
    (1, 'Arun', 'IT', 45000.00),
    (2, 'Priya', 'HR', 40000.00),
    (3, 'Kumar', 'IT', 55000.00);
```

### 3. Filter records

```sql
SELECT *
FROM employees
WHERE salary > 40000;
```

### 4. Aggregate functions

```sql
SELECT
    department,
    COUNT(*) AS employee_count,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department;
```

### 5. Sort query results

```sql
SELECT employee_name, salary
FROM employees
ORDER BY salary DESC;
```

### 6. Common Table Expression (CTE)

```sql
WITH high_salary AS (
    SELECT employee_name, salary
    FROM employees
    WHERE salary > 40000
)
SELECT *
FROM high_salary;
```

### 7. Window function

```sql
SELECT
    employee_name,
    department,
    salary,
    RANK() OVER (
        PARTITION BY department
        ORDER BY salary DESC
    ) AS salary_rank
FROM employees;
```

These are illustrative examples to help you get started; they do not necessarily reproduce the exact statements in your repository files.

## 🧠 Recommended Learning Path

<box gap={3}>
  <row align=start gap={3}>
    <box background="surface-secondary" radius="lg" padding={2}>
      <icon name="database" size="xl" />
    </box>
    <box flex="1" gap={1}>
      **Level 1 — SQL Fundamentals**

      <text color="secondary" size="sm">Learn DDL, DML, comparison operators, logical operators, filtering, and sorting.</text>
    </box>
  </row>
  <divider color="subtle" />
  <row align=start gap={3}>
    <box background="surface-secondary" radius="lg" padding={2}>
      <icon name="calculator" size="xl" />
    </box>
    <box flex="1" gap={1}>
      **Level 2 — Functions and Grouping**

      <text color="secondary" size="sm">Practise aggregate, string, mathematical, and date/time functions, followed by GROUP BY and HAVING.</text>
    </box>
  </row>
  <divider color="subtle" />
  <row align=start gap={3}>
    <box background="surface-secondary" radius="lg" padding={2}>
      <icon name="git-merge" size="xl" />
    </box>
    <box flex="1" gap={1}>
      **Level 3 — Advanced Queries**

      <text color="secondary" size="sm">Study joins, subqueries, CTEs, views, indexes, and window functions.</text>
    </box>
  </row>
  <divider color="subtle" />
  <row align=start gap={3}>
    <box background="surface-secondary" radius="lg" padding={2}>
      <icon name="shield-check" size="xl" />
    </box>
    <box flex="1" gap={1}>
      **Level 4 — Database Management**

      <text color="secondary" size="sm">Explore transactions, permissions, stored procedures, and database design.</text>
    </box>
  </row>
</box>

## 🔥 Practice Challenges

Try solving these problems using your SQL scripts:

- Find the highest and lowest salaries.
- Calculate the average salary in each department.
- Find employees whose salary is above the company average.
- Identify duplicate records using grouping.
- Retrieve the second-highest salary.
- Join employee records with related department data.
- Rank employees by salary within each department.
- Calculate ages from date-of-birth values.
- Compare transaction behavior using COMMIT and ROLLBACK.
- Explore when an index can improve query performance.

## 🔮 Future Enhancements

- Add sample output for each SQL query.
- Document database-specific syntax requirements.
- Add ER diagrams and database schema documentation.
- Include interview questions and practice exercises.
- Add real-world mini-projects using relational databases.
- Include query optimization and execution-plan examples.
- Add a separate folder for DDL, DML, DQL, DCL, and TCL.
- Add database normalization and indexing exercises.

## 👨‍💻 Author

**Saravanan-mc**

- GitHub Profile: [@Saravanan-mc](https://github.com/Saravanan-mc)
- Repository: [SQL_learning](https://github.com/Saravanan-mc/SQL_learning)

## ⭐ Support

If this repository helps you learn SQL, consider giving it a ⭐ on GitHub.

Explore the examples, practise the queries, and keep improving your database skills!

---

<p align="center">
  <b>Learn SQL. Query Data. Build Database Skills. 🗄️</b>
</p>
