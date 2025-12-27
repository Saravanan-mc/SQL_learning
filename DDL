/* this is comment lines for multi line*/
-- this is comment line for single line 

-- DDL COMMENTS
create table stds(
   id int,
   name varchar(50),
   email varchar(50),
   dept varchar(100),
   dob date
);

alter table stds 
add last_name varchar(50) after name;

alter table stds 
drop column dob;

alter table stds
modify name varchar(100);

alter table stds 
rename column name to first_name;

-- rename table stds to ssss;


-- TRUNCATE TABLE std;


describe stds; -- or using " desc stds; "




