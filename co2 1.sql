create database employ;
use employ;
create table T2(a int,b char(10));
call inserts(1,'A');
call inserts(2,'B');
call inserts(3,'C');
select * from T2;

CREATE DEFINER=`root`@`localhost` PROCEDURE `inserts`(a int,b char)
BEGIN
insert into T2(a,b)values(a,b);
END
