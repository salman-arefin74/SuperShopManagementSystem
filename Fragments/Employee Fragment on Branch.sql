DROP TABLE RampuraEmployee;
CREATE TABLE RampuraEmployee as
select * from employee
where branch_id = 1;

DROP TABLE DhanmondiEmployee;
CREATE TABLE DhanmondiEmployee as
select * from employee
where branch_id = 2;

DROP TABLE GulshanEmployee;
CREATE TABLE GulshanEmployee as
select * from employee
where branch_id = 3;

DROP TABLE UttaraEmployee;
CREATE TABLE UttaraEmployee as
select * from employee
where branch_id = 4;
