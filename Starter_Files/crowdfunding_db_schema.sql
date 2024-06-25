CREATE TABLE category(category_id VARCHAR(10) primary key,
	category VARCHAR(30));
	
CREATE TABLE subcategory(subcategory_id VARCHAR(10) primary key,
	subcategory VARCHAR(30));

CREATE TABLE contacts(contact_id INT primary key,
	first_name VARCHAR(25),
	last_name VARCHAR(25),
	email VARCHAR(50));

CREATE TABLE campaign(
	cf_id INT primary key,
contact_id INT,
	Foreign key(contact_id) references contacts(contact_id),
company_name VARCHAR(50),
description VARCHAR(200),
goal INT,
pledged INT,
outcome VARCHAR(15),
backers_count INT,
country VARCHAR(2),
currency VARCHAR(3),
launched_date DATE,
end_date DATE,
category_id VARCHAR(10),
	Foreign key(category_id) references category(category_id),
subcategory_id VARCHAR(10),
	Foreign key(subcategory_id) references subcategory(subcategory_id)
)
