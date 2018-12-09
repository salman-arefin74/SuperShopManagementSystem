SET SERVEROUTPUT ON;
DECLARE
	acid int;
	amount int;
	
BEGIN
          acid:='&accountid';
		  amount:='&updatedamount';
	
	update_accounts(acid,amount);
END;
/