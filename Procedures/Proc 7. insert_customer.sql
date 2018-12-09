set serveroutput on;
create or replace procedure insert_customer(cid in customer.customer_id%type, cname in customer.customer_name%type, cno in customer.contact_no%type, pid in customer.product_id%type, amnt in customer.amount%type, bid in customer.branch_id%type, ptype in customer.payment_type%type)
is
begin
	insert into CUSTOMER(customer_id, customer_name, contact_no, product_id, amount, branch_id, payment_type) values (cid, cname, cno, pid, amnt, bid, ptype);

end insert_customer;
/