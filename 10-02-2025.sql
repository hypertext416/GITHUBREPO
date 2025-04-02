use org123
select * from worker
select department, count(department) from worker 
where department in ('admin', 'account') group by department;

SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
HAVING condition
ORDER BY column_name(s);

SELECT department, count(department) as highest_head_count
FROM worker
GROUP BY department
HAVING COUNT (department) >= 3;


create table VITBhopal (id int primary key, name varchar(20) not null,
  departement varchar(25) not null);
insert into VITBhopal values(104,'Shubham','cs'),(103,'Anjali','BEd');

create table VIT (id int primary key, name varchar(20) not null,
  departement varchar(25) not null);
insert into VIT values(104,'Shubham','Samastipur'),(103,'Anjali','Vidyapati');

select * from VIT;
select * from VITBhopal;

select name as WinnerOfTheYear from VITBhopal 
  where id = (select id from VIT where college = 'bhopal');



  
