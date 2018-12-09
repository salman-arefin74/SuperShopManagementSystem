SELECT employee_name, email, password, contact_no, age 
into ename, em, pw, cno, a
from DhanmondiEmployee@site_link1 where employee_id = 2;
INSERT into RampuraEmployee@site_link1 values (2, ename, em, pw, cno, 1, a);
DELETE from DhanmondiEmployee@site_link1 where employee_id = 2;