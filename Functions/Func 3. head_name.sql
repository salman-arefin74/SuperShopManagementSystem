CREATE OR REPLACE FUNCTION head_name(brname IN branches.branch_location%TYPE)
RETURN varchar
IS
sname varchar(30);

BEGIN
	select employee_name into sname
	from employee inner join branches
	on branches.head_employee_id = employee.employee_id
	where branches.branch_location = brname;

  RETURN sname;

END head_name;
/

