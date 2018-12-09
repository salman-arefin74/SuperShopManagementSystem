SET SERVEROUTPUT ON;
DECLARE
	pid int;
	pname varchar(30);
	ct varchar(30);
	pprice int;
	stk int;
	
BEGIN
          pid:= '&ProductID';
		  pname:= '&ProductName';
		  ct:= '&Category';
		  pprice:= '&productPrice';
		  stk:= '&stock';
	
	insert_product(pid,pname,ct,pprice,stk);
END;
/