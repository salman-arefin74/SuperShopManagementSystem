CLEAR SCREEN;


SET SERVEROUTPUT ON;



DECLARE
	branchid int;
	totalcount int;
	
BEGIN
          branchid:='&branchhid';
	
	totalcount := employee_number(branchid);
	
        dbms_output.put_line(totalcount||' ');
	
END;
/