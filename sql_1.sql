-- create DATABASE
create database college;
show databases;
 use college;
 
 -- create TABLE
 create table IT_table(
 id int,
 name varchar(30),
 branch varchar(20),
 gender varchar(1),
 perc int );
 
create table core_table(
id int primary key,
name varchar(30) ,
branch varchar(20),
gender varchar(1),
perc int Not Null);

show tables;

-- DML commands
select * from it_table;

insert into it_table
values(101,"ammu",'cse','F',80),(102,"harsha",'cse','M',74),
(103,"anirudh",'IT','M',84),(104,"harshi",'IT','F',57),
(105,"santha",'ece','M',60),(106,"alekhya",'ece','F',75),
(107,"rohi",'cse','F',71),(108,"appu",'ece','F',89);

insert into core_table
values(301,"lucky",'mech','M',81),(302,"hari",'eee','F',94),
(303,"arjun",'mech','M',87),(304,"suma",'civil','F',54),
(305,"surya",'eee','M',69),(306,"ajay",'mech','M',78),
(307,"ritu",'civil','F',78),(308,"bhanu",'mech','M',59);

 select * from core_table;
 select * from it_table;
 
desc it_table;
desc core_table;

-- alter- DDL
 alter table it_table
 add grade varchar(5);
 
 desc it_table;
 
 alter table it_table
 drop column grade;
 
  desc it_table;
  
alter table it_table
modify column perc float;
  
desc it_table;

alter table it_table
add constraint primary key(id);
-- DML
update it_table
set perc=99 where id=101;


-- aggregate functions
# count
select count(*) from core_table;
select count(*) from it_table;

select count(distinct branch) as count from core_table;
select count(distinct branch) as branch_count from core_table where perc>80;
select count(id),branch from core_table group by branch;

-- sum
select sum(perc) from it_table;

-- avg
select avg(perc) from core_table;
-- max
select max(perc) from it_table;
-- min
select min(perc) from it_table;

select max(perc)-min(perc) from it_table;
-- group by
select name , perc from core_table group by perc;
select name , perc from core_table group by perc having perc>60;


-- where
select name,branch,perc from core_table where perc>70;
select name,branch,perc from it_table where perc>70;

-- order by
select name,branch,perc from core_table order by perc;
select name,branch,perc from core_table order by perc desc;

-- LIKE
select  distinct name,id from core_table where name like 'a%';

select  distinct name,id from core_table where name like 'a%' or name like 's%';

select  distinct name,id from core_table where name like 'a%' and name like '%i';

select * from core_table;

-- IN
select name,branch,perc from core_table where branch in ('mech','civil','met');