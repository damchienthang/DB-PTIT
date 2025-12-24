alter table Orders 
modify order_id INT NOT NULL AUTO_INCREMENT primary key,
modify customer_name varchar(100) not null,
modify order_date DATE,
modify status ENUM('PENDING','PAID','SHIPPED','CANCELLED') NOT NULL default 'PENDING',
modify total_amount DECIMAL(10,2),
add payment_method ENUM('CASH','CARD','TRANSFER') not null default 'CASH';