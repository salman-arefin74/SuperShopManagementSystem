DROP TABLE ACCOUNT1;
CREATE TABLE ACCOUNT1 as
select * from ACCOUNTS 
where total_amount < 2500;


DROP TABLE ACCOUNT2;
CREATE TABLE ACCOUNT2 as
select * from ACCOUNTS 
where total_amount >= 2500;

