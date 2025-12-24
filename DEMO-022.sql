alter table LoyaltyPoints
MODIFY record_id INT NOT NULL AUTO_INCREMENT primary key,
MODIFY customer_id INT NOT NULL,
MODIFY points DECIMAL(10,2) not null default 0,
MODIFY type ENUM('EARN', 'REDEEM', 'ADJUST') not null default 'EARN',
MODIFY created_at DATETIME default current_timestamp,
MODIFY expired_at DATE null,
add status ENUM('ACTIVE', 'EXPIRED','CANCELLED') not null default 'ACTIVE',
drop column note_temp;