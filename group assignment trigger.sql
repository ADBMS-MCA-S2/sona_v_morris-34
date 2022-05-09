//create a database bank to apply trigger to find silver,gold and platinum atm card holders

create database bank1;
use bank1;
create table newaccount(accountno int(20),ac_name varchar(30), minimumbal int(30));
insert into newaccount values (101,'sona',3000);
insert into newaccount values (103,'anu',5000);
insert into newaccount values (105,'mani',10000);
create table customer( customeracno int(20),custname varchar(30),atmcard varchar(30));
select * from newaccount;
select * from customer;
create table gold( customeracno int(20),custname varchar(30),atmcard varchar(30));
create table platinum( customeracno int(20),custname varchar(30),atmcard varchar(30));
create table silver( customeracno int(20),custname varchar(30),atmcard varchar(30));
select * from silver;
select * from gold;
select * from platinum;

//TRIGGER

CREATE DEFINER=`root`@`localhost` TRIGGER `bank1`.`newaccount_AFTER_INSERT` AFTER INSERT ON `newaccount` FOR EACH ROW
BEGIN
if(new.minimumbal=3000)then
insert into silver set
customeracno=new.accountno,custname=new.ac_name,atmcard="silver";
end if;
if(new.minimumbal=5000)then
insert into gold set
customeracno=new.accountno,custname=new.ac_name,atmcard="gold";
end if;
if(new.minimumbal=10000)then
insert into platinum set
customeracno=new.accountno,custname=new.ac_name,atmcard="platinum";
end if;

END
