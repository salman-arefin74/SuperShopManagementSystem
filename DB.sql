clear screen;

DROP TABLE PRODUCTS CASCADE CONSTRAINTS;
DROP TABLE CUSTOMER CASCADE CONSTRAINTS;
DROP TABLE EMPLOYEE CASCADE CONSTRAINTS;
DROP TABLE BRANCHES CASCADE CONSTRAINTS;
DROP TABLE ACCOUNTS CASCADE CONSTRAINTS;
DROP TABLE CATEGORY CASCADE CONSTRAINTS;

CREATE TABLE BRANCHES (
	branch_id int, 
	branch_location varchar(30), 
	head_employee_id int,
    PRIMARY KEY(branch_id));
	
	
CREATE TABLE PRODUCTS (
	product_id int, 
	product_name varchar(30), 
	category varchar(30), 
	price int,
	stock int,
    PRIMARY KEY(product_id)); 

	
CREATE TABLE CATEGORY (
	categoty_id int,
	category_name varchar(30),
    PRIMARY KEY(categoty_id)); 	


CREATE TABLE CUSTOMER(
	customer_id int, 
	customer_name varchar(30),
	contact_no varchar(30),	
	product_id int,
	amount int,
	branch_id int,
	payment_type varchar(30),
	PRIMARY KEY(customer_id));

	
CREATE TABLE EMPLOYEE (
	employee_id int, 
	employee_name varchar(30), 
	email varchar(20),
	password varchar(20),	
	contact_no varchar(12),
	branch_id int,
	age int,
	PRIMARY KEY(employee_id));


CREATE TABLE ACCOUNTS(
	account_id int, 
	date_recorded date,
	total_amount int,
	total_customers int,
	employee_id int,
	PRIMARY KEY(account_id));
	


insert into BRANCHES(branch_id, branch_location, head_employee_id) values (1, 'Rampura', 1);
insert into BRANCHES(branch_id, branch_location, head_employee_id) values (2, 'Dhanmondi', 2);
insert into BRANCHES(branch_id, branch_location, head_employee_id) values (3, 'Gulshan', 3);
insert into BRANCHES(branch_id, branch_location, head_employee_id) values (4, 'Uttara', 4);

insert into CATEGORY(categoty_id, category_name) values (1, 'Shampoo');
insert into CATEGORY(categoty_id, category_name) values (2, 'Soap');
insert into CATEGORY(categoty_id, category_name) values (3, 'Face Wash');
insert into CATEGORY(categoty_id, category_name) values (4, 'Chocolate');
insert into CATEGORY(categoty_id, category_name) values (5, 'Drinks');
insert into CATEGORY(categoty_id, category_name) values (6, 'Ice-Cream');
insert into CATEGORY(categoty_id, category_name) values (7, 'Magazines');
insert into CATEGORY(categoty_id, category_name) values (8, 'Biscuit');

insert into PRODUCTS(product_id, product_name, category, price, stock) values (1, 'Sunsilk', 'Shampoo', 250, 20);
insert into PRODUCTS(product_id, product_name, category, price, stock) values (2, 'Dove', 'Soap', 200, 40);
insert into PRODUCTS(product_id, product_name, category, price, stock) values (3, 'Garnier', 'Face Wash', 250, 10);
insert into PRODUCTS(product_id, product_name, category, price, stock) values (4, 'Dairy Milk', 'Chocolate', 500, 30);
insert into PRODUCTS(product_id, product_name, category, price, stock) values (5, 'CocaCola', 'Drinks', 100, 10);
insert into PRODUCTS(product_id, product_name, category, price, stock) values (6, 'Belissimo', 'Ice-Cream', 300, 40);
insert into PRODUCTS(product_id, product_name, category, price, stock) values (7, 'World Cup Fever', 'Magazines', 300, 20);
insert into PRODUCTS(product_id, product_name, category, price, stock) values (8, 'Head n Shoulder', 'Shampoo', 600, 10);
insert into PRODUCTS(product_id, product_name, category, price, stock) values (9, '7 UP', 'Drinks', 120, 40);
insert into PRODUCTS(product_id, product_name, category, price, stock) values (10, 'Lux', 'Soap', 250, 30);
insert into PRODUCTS(product_id, product_name, category, price, stock) values (11, 'Pantene', 'Shampoo', 400, 10);
insert into PRODUCTS(product_id, product_name, category, price, stock) values (13, 'Clinic Plus', 'Shampoo', 350, 30);
insert into PRODUCTS(product_id, product_name, category, price, stock) values (14, 'Lifebuoy', 'Soap', 100, 40);
insert into PRODUCTS(product_id, product_name, category, price, stock) values (15, 'Kitkat', 'Chocolate', 250, 30);
insert into PRODUCTS(product_id, product_name, category, price, stock) values (16, 'Snickers', 'Chocolate', 400, 25);
insert into PRODUCTS(product_id, product_name, category, price, stock) values (17, 'Chocbar', 'Ice-Cream', 30, 400);
insert into PRODUCTS(product_id, product_name, category, price, stock) values (18, 'Igloo', 'Ice-Cream', 50, 200);
insert into PRODUCTS(product_id, product_name, category, price, stock) values (19, 'Clemon', 'Drinks', 90, 50);
insert into PRODUCTS(product_id, product_name, category, price, stock) values (20, 'Frooto', 'Drinks', 100, 45);

insert into CUSTOMER (customer_id, customer_name, contact_no, product_id, amount, branch_id, payment_type) values (1, 'Salman', '123', 5, 100, 1, 'Cash');
insert into CUSTOMER (customer_id, customer_name, contact_no, product_id, amount, branch_id, payment_type) values (2, 'Salman', '123', 6, 300, 3, 'Cash');
insert into CUSTOMER (customer_id, customer_name, contact_no, product_id, amount, branch_id, payment_type) values (3, 'Ayon', '456', 9, 120, 4, 'Credit Card');
insert into CUSTOMER (customer_id, customer_name, contact_no, product_id, amount, branch_id, payment_type) values (4, 'Alif', '789', 6, 300, 1, 'Cash');
insert into CUSTOMER (customer_id, customer_name, contact_no, product_id, amount, branch_id, payment_type) values (5, 'Nafiur', '369', 7, 300, 2, 'Credit Card');
insert into CUSTOMER (customer_id, customer_name, contact_no, product_id, amount, branch_id, payment_type) values (6, 'Willan', '135', 17, 300, 4, 'Cash');
insert into CUSTOMER (customer_id, customer_name, contact_no, product_id, amount, branch_id, payment_type) values (7, 'Hazard', '100', 20, 500, 4, 'Cash');
insert into CUSTOMER (customer_id, customer_name, contact_no, product_id, amount, branch_id, payment_type) values (8, 'Courtois', '785', 12, 600, 4, 'Credit Card');
insert into CUSTOMER (customer_id, customer_name, contact_no, product_id, amount, branch_id, payment_type) values (9, 'Morata', '333', 14, 500, 3, 'Cash');
insert into CUSTOMER (customer_id, customer_name, contact_no, product_id, amount, branch_id, payment_type) values (10, 'Ronaldo', '777', 16, 1000, 3, 'Credit Card');
insert into CUSTOMER (customer_id, customer_name, contact_no, product_id, amount, branch_id, payment_type) values (11, 'Messi', '999', 18, 600, 2, 'Cash');
insert into CUSTOMER (customer_id, customer_name, contact_no, product_id, amount, branch_id, payment_type) values (12, 'Higuain', '000', 10, 450, 2, 'Cash');
insert into CUSTOMER (customer_id, customer_name, contact_no, product_id, amount, branch_id, payment_type) values (13, 'Kante', '666', 11, 700, 2, 'Credit Card');
insert into CUSTOMER (customer_id, customer_name, contact_no, product_id, amount, branch_id, payment_type) values (14, 'Alonso', '423', 15, 800, 1, 'Cash');
insert into CUSTOMER (customer_id, customer_name, contact_no, product_id, amount, branch_id, payment_type) values (15, 'Ramos', '444', 8, 800, 1, 'Credit Card');

insert into EMPLOYEE(employee_id, employee_name, email, password, contact_no, branch_id, age) values (1, 'Mashrur', 'mash@gmail.com', '123', '012', 1, 21);
insert into EMPLOYEE(employee_id, employee_name, email, password, contact_no, branch_id, age) values (2, 'Rizvi', 'rizvi@gmail.com', '456', '210', 2, 22);
insert into EMPLOYEE(employee_id, employee_name, email, password, contact_no, branch_id, age) values (3, 'Zuheb', 'juju@gmail.com', '678', '120', 3, 25);
insert into EMPLOYEE(employee_id, employee_name, email, password, contact_no, branch_id, age) values (4, 'Shanta', 'shanta@gmail.com', '567', '102', 4, 29);
insert into EMPLOYEE(employee_id, employee_name, email, password, contact_no, branch_id, age) values (5, 'Prottus', 'pro@gmail.com', '789', '312', 1, 21);
insert into EMPLOYEE(employee_id, employee_name, email, password, contact_no, branch_id, age) values (6, 'Rubayet', 'rub@gmail.com', '312', '213', 1, 23);
insert into EMPLOYEE(employee_id, employee_name, email, password, contact_no, branch_id, age) values (7, 'Sadi', 'sadi@gmail.com', '741', '852', 1, 24);
insert into EMPLOYEE(employee_id, employee_name, email, password, contact_no, branch_id, age) values (8, 'Deba', 'deba@gmail.com', '147', '258', 1, 25);
insert into EMPLOYEE(employee_id, employee_name, email, password, contact_no, branch_id, age) values (9, 'Shurid', 'shu@gmail.com', '471', '582', 2, 26);
insert into EMPLOYEE(employee_id, employee_name, email, password, contact_no, branch_id, age) values (10, 'Shamit', 'auti@gmail.com', '417', '285', 2, 27);
insert into EMPLOYEE(employee_id, employee_name, email, password, contact_no, branch_id, age) values (11, 'Amit', 'amit@gmail.com', '852', '741', 2, 28);
insert into EMPLOYEE(employee_id, employee_name, email, password, contact_no, branch_id, age) values (12, 'Shonkho', 'pata@gmail.com', '258', '147', 2, 29);
insert into EMPLOYEE(employee_id, employee_name, email, password, contact_no, branch_id, age) values (13, 'Rafid', 'cti@gmail.com', '142', '351', 3, 21);
insert into EMPLOYEE(employee_id, employee_name, email, password, contact_no, branch_id, age) values (14, 'Samiur', 'sami@gmail.com', '486', '684', 3, 21);
insert into EMPLOYEE(employee_id, employee_name, email, password, contact_no, branch_id, age) values (15, 'Shourabh', 'sho@gmail.com', '987', '321', 3, 22);
insert into EMPLOYEE(employee_id, employee_name, email, password, contact_no, branch_id, age) values (16, 'Neaz', 'neaz@gmail.com', '654', '546', 4, 23);
insert into EMPLOYEE(employee_id, employee_name, email, password, contact_no, branch_id, age) values (17, 'Shohagh', 'shohagh@gmail.com', '476', '213', 4, 24);
insert into EMPLOYEE(employee_id, employee_name, email, password, contact_no, branch_id, age) values (18, 'Arman', 'arm@gmail.com', '756', '963', 4, 25);
insert into EMPLOYEE(employee_id, employee_name, email, password, contact_no, branch_id, age) values (19, 'Bond', 'bond@gmail.com', '951', '159', 4, 26);
insert into EMPLOYEE(employee_id, employee_name, email, password, contact_no, branch_id, age) values (20, 'Shishir', 'azis@gmail.com', '753', '357', 4, 27);


insert into ACCOUNTS(account_id, date_recorded, total_amount, total_customers, employee_id) values (1, '15-Jul-18', 2000, 15, 1);
insert into ACCOUNTS(account_id, date_recorded, total_amount, total_customers, employee_id) values (2, '15-Jul-18', 1500, 12, 2);
insert into ACCOUNTS(account_id, date_recorded, total_amount, total_customers, employee_id) values (3, '15-Jul-18', 2200, 17, 3);
insert into ACCOUNTS(account_id, date_recorded, total_amount, total_customers, employee_id) values (4, '15-Jul-18', 2500, 10, 4);
insert into ACCOUNTS(account_id, date_recorded, total_amount, total_customers, employee_id) values (5, '16-Jul-18', 3000, 13, 1);
insert into ACCOUNTS(account_id, date_recorded, total_amount, total_customers, employee_id) values (6, '16-Jul-18', 3500, 17, 2);
insert into ACCOUNTS(account_id, date_recorded, total_amount, total_customers, employee_id) values (7, '16-Jul-18', 2100, 10, 3);
insert into ACCOUNTS(account_id, date_recorded, total_amount, total_customers, employee_id) values (8, '16-Jul-18', 3000, 12, 4);


commit;
 
