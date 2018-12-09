set serveroutput on;
create or replace procedure insert_product(pid in products.product_id%type, pname in products.product_name%type, ct in products.category%type, pprice in products.price%type, stk in products.stock%type)
is
begin
	insert into PRODUCTS(product_id, product_name, category, price, stock) values (pid, pname, ct, pprice, stk);

end insert_product;
/