SET SERVEROUTPUT ON;
DECLARE
	cid int;
	cname varchar(30);
	cno int;
	pid int;
	amnt int; 
	bid int;
	ptype varchar(30);
	
BEGIN
        cid:= '&customerID';
		cname:= '&customerName';
		cno:= '&contactNo';
		pid:= '&productID';
		amnt:= '&amount'; 
		bid:= '&branchID';
		ptype:= '&paymentType';
	
	insert_customer(cid, cname, cno, pid, amnt, bid, ptype);
END;
/