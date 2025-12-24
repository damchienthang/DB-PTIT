alter table Employees 
modify emp_id INT NOT NULL AUTO_INCREMENT primary key,
modify salary DECIMAL(12,2) NOT NULL DEFAULT 0,
modify status ENUM('ACTIVE', 'INACTIVE', 'RESIGNED') NOT NULL DEFAULT 'ACTIVE',
add employment_type ENUM('FULL_TIME', 'PART_TIME', 'INTERN') not null default 'FULL_TIME',
add hire_date DATE,
drop column temp_info;