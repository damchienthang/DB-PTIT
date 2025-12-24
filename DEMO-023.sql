alter table Inventory
modify item_id INT not null primary key,
modify quantity INT NOT NULL default 0,
modify unit_price DECIMAL(10,2) NOT NULL default 0,
modify status ENUM('IN_STOCK','OUT_OF_STOCK', 'STOPPED') not null default 'IN_STOCK',
modify last_updated DATETIME default current_timestamp,
add note varchar(255) null,
drop column temp_col;