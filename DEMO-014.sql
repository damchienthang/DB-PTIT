create table TXN (
 TxnID INT primary key,
 AccountID INT not null,
 Amount DECIMAL(12,2) NOT NULL check(Amount > 0),
 Type ENUM('DEPOSIT', 'WITHDRAW') NOT NULL,
 TxnTime timestamp default current_timestamp not null,

 foreign key(AccountID) references ACCOUNT(AccountID)
)