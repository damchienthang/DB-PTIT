create table SALE_TRANSACTION (
 TxnID INT primary key,
 CustID INT NOT NULL,
 ProductID INT NOT NULL,
 EmpID INT NOT NULL,

 TxnDate DATE NOT NULL,
 Quantity INT NOT NULL,
 UnitPrice DECIMAL(10,2) NOT NULL,
 Discount DECIMAL(5,2) default 0 NOT NULL,
 PaymentMethod ENUM('CASH', 'CARD', 'TRANSFER') NOT NULL,
 Notes VARCHAR(255),

 foreign key(CustID) references CUSTOMER(CustID),
 foreign key(ProductID) references PRODUCT(ProductID),
 foreign key(EmpID) references EMPLOYEE(EmpID)
)