create database company;
use company;
create table department(dept_no int(30) primary key not null,dept_name varchar(30),location varchar(30));
create table employee(emp_no int(30) primary key not null,emp_name varchar(30),salary int(30),dept_no int(30), foreign key(dept_no) references department(dept_no));

insert into  department values(101,"developers","hyderabad");
insert into  department values(102,"analysts","banglore");
insert into  department values(103,"hr","kerala");
insert into  department values(104,"manager","mysore");
delete from department where dept_no=104;
select * from department;

insert into employee values(1,"soumya",5000,101);
insert into employee values(2,"anu",3000,102);
insert into employee values(3,"agnes",7000,103);
insert into employee values(4,"tony",4000,104);
insert into employee values(5,"sona",5000,104);
insert into employee values(6,"mariya",4000,101);
delete from employee where dept_no=104;
select * from employee;

select sum(salary) as 'total salary' from employee;

select department.dept_name,count(employee.emp_no) as 'no: of employees' from Department,Employee 
where department.dept_no=employee.dept_no group by department.dept_name;


select emp_name from employee where emp_name like 'a%';
