DROP TABLE CUSTOMER1;
CREATE TABLE CUSTOMER1 as
select * from CUSTOMER 
where amount < 500;


DROP TABLE CUSTOMER2;
CREATE TABLE CUSTOMER2 as
select * from CUSTOMER 
where amount >= 500;


