SET SERVEROUTPUT ON;
DECLARE
	pid int;
	stk int;
	
BEGIN
          pid:='&productid';
		  stk:='&stockk';
	
	update_stock(pid,stk);
END;
/