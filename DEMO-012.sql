CREATE TABLE SALEORDER (
 OrderID INT primary key,
 CustID INT NOT NULL,
 TotalAmount DECIMAL(12,2) NOT NULL check (TotalAmount > 0),
 Status ENUM('NEW', 'PAID', 'CANCELLED') NOT NULL,

 foreign key(CustID) references CUSTOMER(CustID)
)