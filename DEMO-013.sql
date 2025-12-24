CREATE TABLE SUPPLY (
 SID INT NOT NULL,
 PID INT NOT NULL,
 Price DECIMAL(10,2) NOT NULL CHECK(Price > 0),

 primary key(SID, PID),
 foreign key(SID) references SUPPLIER(SID),
 foreign key(PID) references PART(PID)
)