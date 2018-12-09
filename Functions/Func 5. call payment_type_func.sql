
SET SERVEROUTPUT ON;
DECLARE
	cid int;
	paymenttype varchar2(30);
	
BEGIN
          cid:='&customerid';
	
	paymenttype := payment_type_func(cid);
	
        dbms_output.put_line(paymenttype||' ');
	
END;
/