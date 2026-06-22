-- GROUP BY
select *
from employee_demographics;

SELECT gender
FROM employee_demographics
GROUP BY gender;

SELECT gender, AVG(age), max(age), min(age), count(age)
FROM employee_demographics
GROUP BY gender;

SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary
;

-- ORDER BY
select *
from employee_demographics
ORDER BY first_name asc;

select *
from employee_demographics
ORDER BY gender, age desc;

select *
from employee_demographics
ORDER BY 5, 4;
## this is the column number which is not a good practice but used for short handle

-- Having vs Where
select gender, avg(age)
from employee_demographics
group by gender 
having avg(age)>40;

SELECT occupation, avg(salary)
FROM employee_salary
where occupation like '%manager%'
group by occupation;

SELECT occupation, avg(salary)
FROM employee_salary
where occupation like '%manager%'
group by occupation
having avg(salary) > 75000;
