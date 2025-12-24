create table EMPLOYEE (
 EmpID INT primary key,
 FullName varchar(100) not null,
 BirthDate DATE,
 HireDate DATE NOT NULL,
 Salary DECIMAL(10,2) NOT NULL,
 Department VARCHAR(50) NOT NULL,
 Email VARCHAR(100),
 Phone VARCHAR(20)
)