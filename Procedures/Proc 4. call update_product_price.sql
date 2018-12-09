SET SERVEROUTPUT ON;
DECLARE
	pid int;
	prc int;
	
BEGIN
          pid:='&productid';
		  prc:='&pricee';
	
	update_product_price(pid,prc);
END;
/