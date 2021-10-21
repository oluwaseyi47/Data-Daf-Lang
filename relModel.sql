

CREATE TABLE Product (
    Product_id VARCHAR(20) CONSTRAINT pk_Product PRIMARY KEY,

    Product_name VARCHAR(20) CONSTRAINT nt_Product_name NOT NULL,

    Price NUMBER CONSTRAINT positive CHECK (Price > 0)
);

DESCRIBE Product;

CREATE TABLE  Customer (
    Customer_id VARCHAR(20) CONSTRAINT pk_Customer PRIMARY KEY,

    Customer_name VARCHAR(20) CONSTRAINT nt_Customer_name NOT NULL,

    Customer_tel NUMBER
);

DESCRIBE Customer;

CREATE TABLE Orders(
Customer_id VARCHAR(20),

Product_id VARCHAR(20),

Quantity NUMBER,

Total amount NUMBER,

CONSTRAINT fk_Customer FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id)
CONSTRAINT fk_Product FOREIGN KEY (Product_id) REFERENCES Product (Product_id)
);

DESCRIBE Orders;


ALTER TABLE Product ADD Category VARCHAR(20)
ALTER TABLE Orders ADD OrderDate Date CONSTRAINT sysdate SYSDATE