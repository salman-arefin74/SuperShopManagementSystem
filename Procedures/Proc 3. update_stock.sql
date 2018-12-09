set serveroutput on;
create or replace procedure update_stock(pid in products.product_id%type, stk in products.stock%type)
is
begin
	update products
	set products.stock = stk where products.product_id = pid;

end update_stock;
/