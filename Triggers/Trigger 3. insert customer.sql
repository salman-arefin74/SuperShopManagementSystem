SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER insert_customer 
AFTER INSERT ON CUSTOMER 
FOR EACH ROW 

DECLARE 
   msg varchar(100):= 'New customer details have been inserted !!!'; 
BEGIN 

    dbms_output.put_line(msg);
	
	dbms_output.put_line('Customer ID: ' || :NEW.customer_id); 
	dbms_output.put_line('Customer Name: ' || :NEW.customer_name); 
	dbms_output.put_line('Branch ID: ' || :NEW.branch_id);
	dbms_output.put_line('Amount: ' || :NEW.amount);
	
END; 
/ 