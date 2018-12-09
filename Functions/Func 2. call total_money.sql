CLEAR SCREEN;


SET SERVEROUTPUT ON;



DECLARE
	accdate date;
	eid int;
	totall int;
	
		
BEGIN
          accdate:='&acccdate';
	eid:='&emplid';
	
	totall := total_money(accdate,eid);
	
        dbms_output.put_line(totall||' ');
	
END;
/