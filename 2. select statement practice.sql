-- SELECT clause
SELECT * 
FROM employee_demographics;

SELECT first_name, last_name, birth_date,age,(age+10) *10
FROM employee_demographics;
#pemdas is used in mathsof my sql

select DISTINCT first_name
from employee_demographics;

SELECT DISTINCT first_name, gender
FROM employee_demographics;

-- WHERE clause
SELECT *
FROM employee_salary
where salary >= 50000;

SELECT *
FROM employee_demographics
where gender != 'female';

select *
from employee_demographics
where birth_date > '1985-01-01';

-- and or not -- logical operators
select *
from employee_demographics
where birth_date > '1985-01-01'
and gender = 'male';

select *
from employee_demographics
where birth_date > '1985-01-01'
or gender = 'male';

select *
from employee_demographics
where birth_date > '1985-01-01'
or not  gender = 'male';

select *
from employee_demographics
where (first_name='leslie' and age= 44) or age>55;

-- like statement
-- % and_
select *
from employee_demographics
where birth_date like '1989%';


