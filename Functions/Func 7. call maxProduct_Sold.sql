SET SERVEROUTPUT ON;
DECLARE
	pid int;
	totalcount int;
	
BEGIN
	pid := '&productID';
	totalcount := maxProduct_Sold(pid);
	
        dbms_output.put_line(totalcount||' ');
	
END;
/