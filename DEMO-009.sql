delete from CUSTOMER 
where CustID not in (
 SELECT CustID
 FROM SALEORDER 
);