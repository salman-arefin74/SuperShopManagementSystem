CREATE OR REPLACE FUNCTION employee_number(brid IN employee.branch_id%TYPE)

RETURN number
IS
scount number :=0;

BEGIN

  select count(employee_id) into  scount 
  from EMPLOYEE group by branch_id having branch_id = brid;

  RETURN scount;

END employee_number;
/

