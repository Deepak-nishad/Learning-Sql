CREATE DATABASE TEMP;
USE TEMP;

CREATE TABLE customer(
ID INT PRIMARY KEY,
cname varchar(255),
adress varchar(255),
gender char(2),
city varchar(255),
Pincode integer
);

INSERT INTO customer 
VALUES (001, 'Monika', 'jind', 'F', 'JIND', 126102),
		(002, 'Niharika', 'rohatk', 'F', 'MAHAM', 125639),
		(003, 'Vishal', 'panipat', 'M', 'GANNOR', 124001),
		(004, 'Amitabh', 'mujafarpur','F', 'MOTIPUR', 789654),
		(005, 'Vivek', 'delhi', 'F', 'UTTAM', 122112);
    
    -- when we have not enough data
	insert into customer (id , cname, adress) values( 6 , 'akarsh','panipat');
   
SELECT * FROM CUSTOMER;
 

    

CREATE TABLE order_details(
order_ID INT PRIMARY KEY,
deliver_date date,
cust_id int,
foreign key (cust_id) references customer(ID) on delete cascade
 );
 
 insert into order_details
 values(1, '2019-03-11', 1);
 
 insert into order_details
 values(2, '2019-03-12', 1);
 
 select * from order_details;
 delete from customer where id=1;

create table account (
ID INT PRIMARY KEY,
name varchar(255) unique,
balance int not null default 0
);
	

INSERT INTO ACCOUNT (ID, NAME)
 VALUES	(001, 'M');
 
 drop table customer;

select * from account;

-- ADD NEW COLUMN

ALTER TABLE ACCOUNT ADD INTEREST FLOAT NOT NULL DEFAULT 0;

-- MODIFY 
ALTER TABLE ACCOUNT MODIFY INTEREST DOUBLE NOT NULL DEFAULT 0;

-- check it is converted into double or not
 
 DESC ACCOUNT;   -- (it describe the account what is types)

-- CHANGE COLOUM (RENAME THE COLOUMN)

 ALTER TABLE ACCOUNT CHANGE COLUMN INTEREST SAVING_INTEREST FLOAT NOT NULL DEFAULT 0;


--  drop coloumn

 alter table account DROP COLUMN SAVING_INTEREST;
 
 -- Reaname table name 
  alter table account rename to accountss;
  
  select * from  customer ;
  
  -- update 
  update customer set gender='m', city="gannor" where id = 6;
  
-- update multiple row
set SQL_SAFE_UPDATES=1;
update customer set pincode=111222;

update customer set Pincode = Pincode +1;

-- DELETE COMMANAD
delete from customer where id= 6;









