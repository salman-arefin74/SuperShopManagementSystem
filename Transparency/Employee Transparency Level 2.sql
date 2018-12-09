SELECT employee_name, email, password, contact_no, age 
into ename, em, pw, cno, a
from DhanmondiEmployee where employee_id = 2;
INSERT into RampuraEmployee values (2, ename, em, pw, cno, 1, a);
DELETE from DhanmondiEmployee where employee_id = 2;