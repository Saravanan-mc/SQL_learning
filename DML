CREATE TABLE student_dml (
    student_id INT,
    student_name VARCHAR(50),
    age INT,
    department VARCHAR(50),
    email VARCHAR(100)
);

-- INSERT 
INSERT INTO student_dml
VALUES (1, 'Rahul', 20, 'Computer Science', 'rahul@gmail.com');

-- with column name 
INSERT INTO student_dml (student_id, student_name, age, department, email)
VALUES (6,'Anita', 21, 'IT', 'anita@gmail.com');

-- insert lines (multi rows )
INSERT INTO student_dml VALUES
(3, 'Karan', 22, 'Mechanical', 'karan@gmail.com'),
(4, 'Priya', 20, 'Electrical', 'priya@gmail.com'),
(5, 'Suresh', 23, 'Civil', 'suresh@gmail.com');

-- update 
UPDATE student_dml
SET age = 100
where student_id = 6 or student_name='priya';

-- delete
delete from student_dml
where age=23;


-- select or DQL comment
select *from student_dml;

select age, email from student_dml where age=100;




