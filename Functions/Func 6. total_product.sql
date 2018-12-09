CREATE OR REPLACE FUNCTION total_product(ct IN products.category%TYPE)

RETURN number
IS
scount number :=0;

BEGIN

  select count(product_id) into  scount 
  from PRODUCTS group by category having category = ct;

  RETURN scount;

END total_product;
/

