CREATE OR REPLACE FUNCTION product_func(id IN products.product_id%type)
RETURN number
IS
scount number :=0;

BEGIN
  select count(product_id) into scount
  from products
  where price = (select price from products 
               where product_id=id);
	

  RETURN scount;
  

END product_func;
/

drop table product_price cascade constraints;

create table product_price
( trackid integer,
  pnum integer,
  same_price number);

create or replace procedure product_proc (id IN integer)
is
tid integer := id;
pid products.product_id%type;
pprice number;


cursor pcur is
select product_id,product_func(product_id) from products;

begin

  open pcur();
 loop
     fetch pcur into pid,pprice;
     exit when pcur%notfound;
  
  tid := tid+1;
  insert into product_price values(tid,pid,pprice);
  
end loop;

close pcur;

end product_proc;
/

set serveroutput on;
begin	

	product_proc(2000);
	
end;
/

select * from product_price;



 