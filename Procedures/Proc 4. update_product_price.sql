set serveroutput on;
create or replace procedure update_product_price(pid in products.product_id%type, prc in products.price%type)
is
begin
	update products
	set products.price = prc where products.product_id = pid;

end update_product_price;
/