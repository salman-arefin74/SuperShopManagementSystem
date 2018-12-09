CLEAR SCREEN;


SET SERVEROUTPUT ON;



DECLARE
	name varchar2(30);
	eid int;
	
BEGIN
          eid:='&branchid';
	
	name := which_branch(eid);
	
        dbms_output.put_line(name||' ');
	
END;
/