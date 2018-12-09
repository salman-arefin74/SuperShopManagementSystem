CREATE OR REPLACE FUNCTION payment_type_func(cid IN customer.customer_id%TYPE)
RETURN varchar
IS
ptype varchar(30);

BEGIN
	select customer.payment_type into ptype from customer
	where customer.customer_id = cid;

  RETURN ptype;

END payment_type_func;
/

