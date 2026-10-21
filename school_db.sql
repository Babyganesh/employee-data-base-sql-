-- Practice Exercises

-- 1.	Create a database named school_db.
create database school_db;

use school_db;

-- 2.	Create a table named teachers with teacher_id, name, and subject.
create table teachers(
teacher_id int primary key,
name varchar(100),
subject varchar(300)
);

select *from teachers;

-- 3.	Insert at least three teacher records.
insert into teachers (teacher_id ,name,subject)
values(101,'Kashir','Tamil'),(102,'Vimal','English'),(103,'Kalai','Matha'),
	  (104,'Karuniya','CS'),  (105,'Dhanu','History'),(106,'Pooja','SS');
      
update teachers set subject='Maths'where teacher_id=103;
update teachers set subject='python'where teacher_id=101;
update teachers set subject='java'where teacher_id=102;
update teachers set subject='ETL'where teacher_id=103;
update teachers set subject='PYTHON'where teacher_id=104;
update teachers set subject='SQL'where teacher_id=105;
update teachers set subject='ML/DL'where teacher_id=106;

-- 5.	Display only teachers who teach Python.
select name from teachers where subject ='PYTHON';

-- 6.	Update one teacher's subject.
update teachers set subject='MYSQL'where teacher_id=105;

-- 7.	Delete one record using its primary key.
delete from  teachers where teacher_id=104;
      
select *from teachers;

-- employees database( Practice Exercises )
CREATE DATABASE employees_db1;

USE employees_db1;
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    age INT,
    salary DECIMAL(10,2)
);
select *from employees;
insert into employees( employee_id ,name,department,age,salary)
values(1,'baby','it',25,50000.00),
(2,'karthi','hr',29,40000.00),
(3,'kalai','hr',24,60000.00),
(4,'tamil','it',35,45000.00),
(5,'suriya','sales',23,35000.00),
(6,'priya','marketing',34,40000.00);

-- 1.Display departments with more than one employee. 
select department ,count(*) as employee_count
from employees
group by department
having count(*) > 1;

-- Display departments whose total salary is greater than 90000. 
select department ,sum(salary) as total_salary
from employees
group by department
having sum(salary) > 90000;

-- where using
select department ,sum(salary) as total_salary
from employees
where salary >=20000
group by department
having sum(salary) > 90000;

-- 3.Display departments whose average salary is less than 45000. 

select department, avg(salary) as avg_salary
from employees
group by department
having avg(salary) < 45000;

-- 4.Show departments with at least two employees after filtering salaries above 35000. 
select department ,count(*) as emp_count
from employees
where salary > 35000
group by department
having count(*)>=2;




select *from employees;



