Create table product(
  Product_id Varchar(20) Constraint PK Primary key,
	Product_name Varchar(20) Not Null,
	  price int
)

Create table customer(
  Customer_id Varchar(20) Constraint PK2 Primary key,
	Customer_name Varchar(20) NOT Null,
	Customer_Tel int
)

Create table Orders(
   Customer_id Varchar(20),
	Product_id Varchar(20),
	Quatity int,
	Total_amount int,
	Constraint FK Foreign key(Customer_id) references Customer (Customer_id),
	Constraint FK2 Foreign key(Product_id) references Product (Product_id)
	
)

Alter table Product add column Category Varchar(20)

Alter table Orders add column Orderdate date default Current_date