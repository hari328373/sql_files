-- Dates and Times
select curdate();
select day(curdate());
select now();
select current_timestamp();


create table people(
name varchar(45),
birth_date date,
birth_time time,
birth_datetime datetime);

insert into people values 
('klaus','1998-08-15','09:50:30','1998-08-15 09:50:30'),
('stefan','2000-11-29','10:55:39','2000-11-29 10:55:39'),
('caroline','1997-12-11','13:30:15','1997-12-11 13:30:11');


use college;
select * from people;
desc people;

-- year
select year(birth_date) as year from people;
select year(birth_date) as year_of_birth , birth_time from people;

-- month
select month(birth_date) from people;
select monthname(birth_date) from people;

-- day
select day(birth_date) from people;
select dayname(birth_date) from people;
select dayofweek(birth_date),birth_date from people;
-- hour
select hour(birth_time),birth_time from people;
-- minutes
select minute(birth_time),birth_time from people;
-- seconds
select second(birth_time),birth_time from people;
select sec_to_time(birth_time),birth_time from people;

select date(birth_datetime),birth_datetime from people;
select time(birth_datetime),birth_datetime from people;


select * from people;

insert into people values
('bonny',current_date(),current_time(),current_timestamp());

