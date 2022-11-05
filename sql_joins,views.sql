use student;
show tables;
update student set perc=99 WHERE id=102;
select * from student;
select * from student2;
select * from student order by branch;

-- limit
select * from student limit 2;

-- offset
select * from student limit 2 offset 2;
select id,branch from student;

select * from student;
-- BETWEEN
select * from student where perc order by perc between 80 and 99 desc;

-- VIEW
create view mech_students as select * from student where branch='mech';
select * from mech_students;
select * from student;
create or replace view mech_students as select * from student where branch='mech';
select * from student2;
drop view cse_students;


-- ALTER
alter table student2 add column contact_num int;
select * from student2;
alter table student2
drop column contact_num;
select * from student2;

-- INSERT
insert into student2
values(101,"jaya","eee",68,"female"),(102,"bhanu","ece",81,"male");

select * from student2;

-- JOINS 
-- INNER JOIN

select * from student as s inner join student2 as s2 on s.id=s2.sid;

-- RIGHT JOIN
select * from student as s right join student2 as s2 on s.id=s2.sid;

-- LEFT JOIN
select * from student as s left join student2 as s2 on s.id=s2.sid;

-- FULL JOIN
select * from student as s left join student2 as s2 on s.id=s2.sid 
union
select * from student as s right join student2 as s2 on s.id=s2.sid;

select * from student as s left join student2 as s2 on s.id=s2.sid 
union
select * from student as s right join student2 as s2 on s.id=s2.sid;

-- CROSS JOIN
select * from student as s cross join student2 as s2;

select * from student as s cross join student2 as s2 on s.id=s2.sid;

select s.name,s.branch,s.id,s2.sid,s2.sbranch from student as s cross join student2 as s2 on s.id=s2.sid;

-- ANTI JOIN
select * from student as s WHERE NOT EXISTS(select 'mech' from  student2 as s2 where s2.sid=s.id);
select * from student2;

select * from student as s cross join student2 as s2 on s.id=s2.sid;

-- functions
show tables;
select * from student;
-- length
select name,character_length(name) from student;
select name,length(name) from student;

-- concat
select id,name,concat(name," ",branch) as name_branch from student;
select concat(name,concat(' '),branch) from student;
-- replace
select replace("orange is a vegatable","vegatable","fruit") as fruit;
desc student;

-- round
select branch,round(avg(perc),1) as avg_perc from student group by branch;

-- left
select left('haritha',3);
select left(123456789,3);
select concat(name,' ',left(name,2)) from student;

-- right
select right('haritha',3);
select right(123456,3);

-- substring
select substring('haritha',2,3); # here index starts from 1
select substring(name,1,2) from student;

-- upper
select upper(name) from student;
select lower(name) from student;


-- trim
select length("       INDIA        ");
select ltrim("       INDIA        ");
select length(ltrim("       INDIA        "));
select rtrim("       INDIA        ");
select length(rtrim("       INDIA        "));
select trim("       INDIA        ");
select length(trim("       INDIA        "));

select 
CASE 
when perc >85 then 'A+'
when perc >70 then 'A'
when perc> 60 then 'B'
else 'C'
end as grade,id, name, branch, perc
from student;

select name from student order by name ;


