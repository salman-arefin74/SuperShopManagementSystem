SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER insert_accounts 
AFTER INSERT ON accounts 
FOR EACH ROW 

DECLARE 
   msg varchar(100):= 'New account details have been inserted !!!'; 
BEGIN 

    dbms_output.put_line(msg);
	
	dbms_output.put_line('Date: ' || :NEW.date_recorded); 
	dbms_output.put_line('Total Amount: ' || :NEW.total_amount); 
	dbms_output.put_line('Employee id: ' || :NEW.employee_id);
	
END; 
/ 