CREATE TABLE ENROLL (
 SID INT NOT NULL,
 CID INT NOT NULL,
 EnrollmentDate DATE NOT NULL,

 primary key(SID,CID),
 foreign key(SID) references STUDENT(SID),
 foreign key(CID) references COURSE(CID)
);