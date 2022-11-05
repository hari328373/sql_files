use institute;
show tables;
create table course(course_id int, roll_num int);
insert into course values(101,1),(102,2),(103,3),(104,4),(105,5);
select * from course;
select * from student;

-- INNER JOIN
select s.roll_num,s.name,c.course_id from student as s INNER JOIN course as c on s.roll_num=c.roll_num;

-- LEFT JOIN
select s.roll_num,s.name,s.age,c.course_id from student as s LEFT JOIN course as c on s.roll_num=c.roll_num;

-- RIGHT JOIN
select s.name,s.address,c.course_id from student as s RIGHT JOIN course as c on s.roll_num=c.roll_num;

-- FULL JOIN
select s.name,c.course_id from student as s FULL JOIN course as c on s.roll_num=c.roll_num;

-- CROSS JOIN
select s.name,s.address,c.course_id from student as s RIGHT JOIN course as c on s.roll_num=c.roll_num;
