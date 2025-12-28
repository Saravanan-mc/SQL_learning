create table stds(
    id int primary key,
    name varchar(50),
    dob date
);

INSERT INTO stds (id, name, dob) VALUES
(1, 'Alice', '2000-05-14'),
(2, 'Bob', '1999-11-22'),
(3, 'Charlie', '2001-02-10'),
(4, 'Diana', '1998-08-30'),
(5, 'Ethan', '2000-12-05');


select timestampdiff(year,dob,curdate()) as age
from stds;
