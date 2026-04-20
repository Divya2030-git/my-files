USE it_company;

-- creating new table
CREATE TABLE employee(
emp_id int AUTO_INCREMENT,
Name VARCHAR(40) NOT NULL,
Age TINYINT,
Department VARCHAR(20),
Salary INT UNSIGNED NOT NULL,
Gender  ENUM("Male", "Female", "Other"),
Location VARCHAR(25) NOT NULL DEFAULT "INDIA",
PRIMARY KEY(emp_id),
CHECK(Age > 18)
);

-- description of table
desc employee;

-- insert rows into a table
INSERT INTO employee(Name, Age, Department, Salary, Gender, Location)
Values("Divya", 24, "IT", 45000, "Female", "Bengalore"),
("Navya", 26, "NO_IT", 55000, "Female", default),
("Akash", 23, "Manager", 35000, "Male", default);

select * from employee;

-- inserting name as null
INSERT INTO employee(Name, Age, Department, Salary, Gender, Location)
Values(" ", 24, "IT", 45000, "Female", "pakistan");

-- inserting name as null
INSERT INTO employee(Name, Age, Department, Salary, Gender, Location)
Values(NULL, 24, "IT", 45000, "Female", "pakistan");

-- inserting age as below 18
INSERT INTO employee(Name, Age, Department, Salary, Gender, Location)
Values(null, 16, "IT", 45000, "Female", "pakistan");

-- inserting department as null
INSERT INTO employee(Name, Age, Department, Salary, Gender, Location)
Values("divya", 24, null, 45000, "Female", "UK");

-- inserting salary as negative value
INSERT INTO employee(Name, Age, Department, Salary, Gender, Location)
Values("akash ", 24, "IT", -45000, "Female", "pakistan");

-- inserting Gender as Female
INSERT INTO employee(Name, Age, Department, Salary, Gender, Location)
Values("akash", 24, "IT", 45000, "Female", "pakistan");

-- inserting Gender as Male
INSERT INTO employee(Name, Age, Department, Salary, Gender, Location)
Values("akash", 24, "IT", 45000, "Female", "pakistan");

-- inserting loaction as null
INSERT INTO employee(Name, Age, Department, Salary, Gender, Location)
Values("kavya", 24, "IT", 45000, "Female", null);

select * from employee;

alter table employee add branch varchar(30);

alter table employee add education varchar(30) default "B.TECH";

select * from employee;

alter table employee Drop column branch;



