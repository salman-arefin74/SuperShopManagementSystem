DROP TABLE CUSTOMER3;
CREATE TABLE CUSTOMER3 as
select * from CUSTOMER 
where payment_type = 'Cash';


DROP TABLE CUSTOMER4;
CREATE TABLE CUSTOMER4 as
select * from CUSTOMER 
where payment_type = 'Credit Card';


