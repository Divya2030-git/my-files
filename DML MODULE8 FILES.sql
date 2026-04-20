-- use It_company database
use it_company;

-- feach the records of employee
select * from employee;

-- creating new table using an existing table
-- syntax: CREATE TABLE new_table_name
--          SELECT * FROM source_table
CREATE TABLE Employee_backup
SELECT * FROM employee;

-- check the employee_backup table
select * from employee_backup;

-- creating new table using existing table columns
CREATE TABLE Department_table
SELECT emp_id, Department from employee;
-- check with department_table records
select * from department_table;

-- creating new table from an existing table 'IT' Department records
CREATE TABLE It_Table
SELECT * FROM employee
WHERE department = 'it';

-- check the it_table records
select * from it_table;

-- computed column
-- adding new column yearly_income
ALTER TABLE employee ADD COLUMN yearly_income int GENERATED ALWAYS AS (salary * 12) Stored;


-- selecting the employee table
select * from employee;

-- update records
-- Syntax: UPDATE table_name SET col_name = value, col_name2 = value WHERE condition
-- update the emp_id is 3 with salary + 1000
select * from employee
where emp_id = 3;

-- turn off safe mode
SET SQL_SAFE_UPDATES = 0;

UPDATE employee SET salary = salary + 1000
 where emp_id = 3;
 
 -- update the group of record
 -- update it department salaries with +5000
 SELECT * from employee
 where department = 'it';
 
 -- update operation 
 UPDATE employee SET salary = salary + 5000
 WHERE department = 'it';







 