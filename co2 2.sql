create database emply;
use emply;
create table employee(emp_id int(10) not null,ename varchar(20) not null,salary int(20) not null);
alter table employee add primary key(emp_id);
insert into employee values(101,'manu',20000);
insert into employee values(102,'ajay',25000);
insert into employee values(103,'anu',30000);
insert into employee values(110,'ancy',22000);
select emp_id,ename,salary,incentive(emp_id) from employee;


