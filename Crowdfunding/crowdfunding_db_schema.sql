CREATE TABLE category (
	category_id VARCHAR(15) PRIMARY KEY,
	category VARCHAR(15)
);

CREATE TABLE subcategory (
	subcategory_id VARCHAR(15) PRIMARY KEY,
	subcategory VARCHAR(20)
);

CREATE TABLE contacts (
	contact_id INTEGER NOT NULL PRIMARY KEY,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	email VARCHAR(50) NOT NULL
);
CREATE TABLE campaign (
	cf_id Integer PRIMARY KEY,
	contact_id Integer,
	FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
	company_name VARCHAR(30),
	description VARCHAR(50),
	goal FLOAT(6),
	pledged FLOAT(6),
	outcome VARCHAR(15),
	backers_count Integer,
	country VARCHAR(5),
	currency VARCHAR(5),
	launch_date DATE,
	end_date DATE,
	category_id VARCHAR(15),
	FOREIGN KEY (category_id) REFERENCES category(category_id),
	subcategory_id VARCHAR(15),
	FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);