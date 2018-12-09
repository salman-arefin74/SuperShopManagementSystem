DROP TABLE ProductDesc;
CREATE TABLE ProductDesc as
SELECT product_id, product_name, category
from PRODUCTS;

DROP TABLE ProductPrice;
CREATE TABLE ProductPrice as
SELECT product_id, price, stock
from PRODUCTS;
