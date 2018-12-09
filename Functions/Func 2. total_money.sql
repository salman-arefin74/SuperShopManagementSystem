CREATE OR REPLACE FUNCTION total_money(acdate IN accounts.date_recorded%TYPE, empid IN accounts.employee_id%TYPE)
RETURN number
IS
total number :=0;

BEGIN

  select total_amount into total 
  from accounts where acdate = date_recorded and empid = employee_id;

  RETURN total;

END total_money;
/

