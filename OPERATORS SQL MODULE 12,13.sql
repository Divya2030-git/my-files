-- creating new database
CREATE DATABASE COLLEGE;

-- selecting database
USE college;

-- Creating new table
CREATE TABLE ece_students(
std_id int auto_increment,
Name VARCHAR(50) UNIQUE,
Age tinyint unsigned,
s1_marks tinyint NOT NULL CHECK(S1_marks < 101),
s2_marks tinyint NOT NULL CHECK(S2_marks < 101),
s3_marks tinyint NOT NULL,
primary key(std_id)
);


-- inserting some dummy records
INSERT INTO ece_students(Name, Age, s1_marks, s2_marks, s3_marks)
VALUES("Divya",18, 65, 75, 85),
("Sitha", 25, 69, 75,85),
("Geethu", 26, 75, 76, 89),
("Akash", 24, 89, 88, 87)
;

-- add 5 marks to s1_marks for each student
-- variable defination
set @bonus_marks = 5;
-- turn off the safe updates mode
SET SQL_SAFE_UPDATES = 0;
UPDATE ece_students set s1_marks = s1_marks + @bonus_marks;

-- select all records
select * from ece_students;
-- updating s1_marks again
UPDATE ece_students set s1_marks = s1_marks + @bonus_marks;

-- add constraint
ALTER TABLE ece_students modify s3_marks tinyint check(s3_marks <101);

-- computed column percentage
ALTER TABLE ece_students ADD COLUMN percentage float(4,2)
generated always AS (((s1_marks + s2_marks + s3_marks) / 300)*100);

-- select all records 
select * from ece_students;

-- Relational operators 
-- operators: =, <, >, <=, >=, != or <>
-- 1.Find all records where student age is 19
-- 2.Find all records where s1_marks morethan 75 marks
-- 3.Find all records where percentage lesserthan 70
-- 4.Find all records where percentage morethan or equal to 65
-- 5.Find all records where percentage lessthan or equal to 70
select * from ece_students
where percentage <= 70;
-- 6.Find all records where age not equal to 19
select * from ece_students
where not age = 19;

-- logical operators:AND, OR, NOT
-- 1. return all record both s1_marks and s2_marks are more than 75 and
            -- sort by s1_marks in decending order
select * from ece_students
where s2_marks > 75 and s2_marks > 75
order by s1_marks DESC;            
-- 2. Select records either s3_marks lessethan 75 or percentage
					-- morethan 75 sort by name in ascending order
select * from ece_students
where s3_marks > 75 and percentage > 75
order by name; 

-- Bitwise operators: &, |,  ^,  <<, >>, ~
select 10 & 2 as  Bitwise_AND,
        10 | 2 as Bitwise_OR,
        10 ^ 2 as Bitwise_Xor,
        10 << 2 as Leftshift,
        10 >> 2 as rightshift,
        cast(~10 as SIGNED) as Bitwise2s_com;
        
-- string operators: LIKE,NOTLIKE,RLIKE
-- '%'- It selects 0 or more characters
-- '_'- It selects exactly one characters

select * from ece_students;
 
-- return all records where name starts with 's'
select * from ece_students 
where name LIKE 's%';

-- return all records where name ends with 'a'
select * from ece_students 
where name LIKE 'a%';

-- return all records where name ends with 'a' and length is 5
select * from ece_students 
where name LIKE '___%a';

-- return all records where name second character is 'i'
select * from ece_students 
where name LIKE '_i%';

-- return all records if name contains 'i'
select * from ece_students 
where name LIKE '%i%';

select * from ece_students
where name RLIKE '[S]';

-- return records if name starts with 's' and ends with 'i'
select * from ece_students 
where name RLIKE ' ^ s[a-z] + i$';

-- return if name ends with 'a'
select * from ece_students 
where name RLIKE 'a$';

-- return records is name length is 5
select * from ece_students
where name RLIKE '^[a-z]{5}$';

-- return records if name length is 4-6 and starts with 's'
select * from ece_students
where name RLIKE '^s[a-z]{3,5}$';

-- return records if name not starts with 's'
select * from ece_students
where name RLIKE '^[^s]'; 

-- if name contains either 's' or 'i'
select * from ece_students
where name RLIKE '[si]';







