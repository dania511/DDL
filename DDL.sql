CREATE TABLE Customer(
Customer_id VARCHAR(20) CONSTRAINT pk_Customer PRIMARY KEY,
Customer_Name VARCHAR(20) CONSTRAINT nn_Customer NOT NULL,
Customer_tel NUMBER
);

CREATE TABLE Product(
 Product_id VARCHAR2(20) CONSTRAINT pk_Product PRIMARY KEY,
 Product_Name VARCHAR2(20) CONSTRAINT nn_Product NOT NULL,
 Price NUMBER CONSTRAINT check_price CHECK (price>0)
 );

CREATE TABLE  Orders(
quantity NUMBER,
total_amount NUMBER,
CONSTRAINT fk_ordersCust FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id) ,
CONSTRAINT fk_OrdersProd FOREIGN KEY (Product_id) REFERENCES Product(Product_id) 
);

ALTER TABLE Product ADD Category VARCHAR2(20);
ALTER TABLE Oeders ADD OrderDate DATE DEFAULT SYSDATE ;
