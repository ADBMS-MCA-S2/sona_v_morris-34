create database college_employee;
use college_employee;
create table new_employee(empid int(10),empname varchar(30),department varchar(30));
insert into new_employee values(100,'sona','mca');
insert into new_employee values(101,'sonu','cs');
create table department_MCA(deptid int(10),deptname varchar(30),deptemployee varchar(30));
create table department_CS(deptid int(10),deptname varchar(30),deptemployee varchar(30));
select * from new_employee;
select * from department_MCA;
select * from department_CS;



CREATE DEFINER=`root`@`localhost` TRIGGER `college_employee`.`new_employee_AFTER_INSERT` AFTER INSERT ON `new_employee` FOR EACH ROW
BEGIN
if(new.department='mca')then
insert into department_MCA set 
deptid=new.empid,deptname=new.empname,deptemployee="assit.prof filled";
end if;
if(new.department='cs')then
insert into department_CS set 
deptid=new.empid,deptname=new.empname,deptemployee="assit.prof filled";
end if;
END
