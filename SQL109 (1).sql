create table products(
 product_id INT AUTO_INCREMENT primary key,
 product_name varchar(255) not null,
 category varchar(100),
 price decimal(10,2),
 stock_quantity INT,
 created_at timestamp default current_timestamp
)