CREATE OR REPLACE FUNCTION which_branch(empid IN employee.employee_id%TYPE)
RETURN varchar
IS
brname varchar(30);

BEGIN
	select branch_location into brname
	from branches inner join employee
	on branches.branch_id = employee.branch_id
	where employee.employee_id = empid;

  RETURN brname;

END which_branch;
/

