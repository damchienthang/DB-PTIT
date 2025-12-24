DELETE FROM ORDER_ITEM 
WHERE ProductID in (
 SELECT p.ProductID 
 FROM PRODUCT p
 JOIN CATEGORY c ON c.CategoryID = p.CategoryID
 where c.CategoryName = 'Obsolete' or p.Discontinued = 1
);