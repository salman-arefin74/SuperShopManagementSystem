SET SERVEROUTPUT ON;
DECLARE
	category varchar(30);
	totalcount int;
	
BEGIN
          category:='&Categoryy';
	
	totalcount := total_product(category);
	
        dbms_output.put_line(totalcount||' ');
	
END;
/