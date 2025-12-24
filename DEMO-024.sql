alter table DeliveryOrders
modify order_item_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
modify order_id varchar(50) not null,
modify customer_phone varchar(20) not null,
modify address varchar(255) not null,
modify shipping_method ENUM('STANDARD', 'EXPRESS', 'SAME_DAY') not null default 'STANDARD',
modify shipping_fee DECIMAL(10,2) not null default 0,
modify cod_amount DECIMAL(10,2) not null default 0,
modify delivery_status ENUM('PENDING','SHIPPING','DELIVERED','RETURNED','CANCELLED') not null default 'PENDING',
modify created_text DATETIME default current_timestamp,
add updated_at DATETIME null,
drop column temp_note;