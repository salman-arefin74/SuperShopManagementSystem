CREATE OR REPLACE FUNCTION maxProduct_sold(pid in customer.product_id%type)
RETURN number
IS
scount number :=0;

BEGIN

	select count(product_id) into scount from customer group by product_id having product_id = pid;
	
	RETURN scount;

END maxProduct_sold;
/

