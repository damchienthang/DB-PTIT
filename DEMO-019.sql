create table LOAN (
 LoanID INT primary key,
 MemberID INT NOT NULL,
 BookID INT NOT NULL,
 LoanDate DATE NOT NULL,
 DueDate DATE NOT NULL,
 ReturnDate DATE,
 Status ENUM('BORROWED', 'RETURNED', 'OVERDUE') default 'BORROWED' not null,
 Fine DECIMAL(8,2) default 0 not null,

 foreign key(MemberID) references MEMBER(MemberID),
 foreign key(BookID) references BOOK(BookID)
)