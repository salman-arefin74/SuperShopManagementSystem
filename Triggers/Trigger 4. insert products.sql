SET SERVEROUTPUT ON;

CREATE OR REPLACE TRIGGER insert_products 
AFTER INSERT ON products 
FOR EACH ROW 

DECLARE 
   msg varchar(100):= 'New product details have been added !!!'; 
BEGIN 

    dbms_output.put_line(msg);
	
	dbms_output.put_line('Product ID: ' || :NEW.product_id); 
	dbms_output.put_line('Product Name: ' || :NEW.product_name); 
	dbms_output.put_line('Category: ' || :NEW.category);
	dbms_output.put_line('Price: ' || :NEW.price);
	dbms_output.put_line('Stock: ' || :NEW.stock);
	
END; 
/ 