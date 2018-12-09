CLEAR SCREEN;


SET SERVEROUTPUT ON;



DECLARE
	name varchar2(30);
	branchname varchar2(30);
	
BEGIN
          branchname:='&branchhname';
	
	name := head_name(branchname);
	
        dbms_output.put_line(name||' ');
	
END;
/