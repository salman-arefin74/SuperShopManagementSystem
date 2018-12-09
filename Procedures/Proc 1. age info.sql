CREATE OR REPLACE FUNCTION employee_func(id IN employee.employee_id%type)
RETURN number
IS
scount number :=0;

BEGIN
  select count(employee_id) into scount
  from employee
  where age = (select age from employee 
               where employee_id=id);
	

  RETURN scount;
  

END employee_func;
/

drop table age_info cascade constraints;

create table age_info
( trackid integer,
  snum integer,
  same_age number);

create or replace procedure employee_proc (id IN integer)
is
tid integer := id;
sid employee.employee_id%type;
sage number;


cursor scur is
select employee_id,employee_func(employee_id) from employee;

begin

  open scur();
 loop
     fetch scur into sid,sage;
     exit when scur%notfound;
  
  tid := tid+1;
  insert into age_info values(tid,sid,sage);
  
  
  
end loop;

close scur;

end employee_proc;
/

set serveroutput on;
begin	

	employee_proc(1000);
	
end;
/

select * from age_info;



 