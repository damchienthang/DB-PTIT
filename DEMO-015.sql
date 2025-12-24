alter table Students 
modify student_id INT NOT NULL AUTO_INCREMENT primary key,
modify birth_date DATE,
modify email varchar(255) NOT NULL,
modify phone varchar(50) not null,
add created_at DATETIME default current_timestamp;