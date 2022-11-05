use employee;
SELECT * FROM employee.emp_table;
insert into emp_table
values(1001,"john",'sales',28000),(1005,"james",'finance',54000),(1009,"mickel",'sales',26000);

truncate table emp_table;

SELECT * FROM employee.emp_table;

create table emp2(id int,
name varchar(20),
dept varchar(20),
salary int);

show tables;

select * from emp2;

drop table emp2;

show tables;

-- DML 
delete from emp_table 
where dept='finance';

select * from emp_table;

delete from emp_table;

select * from emp_table;

select id,name,dept,salary, (salary/10) as bonus from emp_table;





