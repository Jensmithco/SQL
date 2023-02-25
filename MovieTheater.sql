CREATE TABLE moviecustomerjenn(
	customer_id SERIAL PRIMARY KEY, 
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	billing_info VARCHAR(150)
);

create table movieticketsjenn(
	ticket_id SERIAL PRIMARY KEY, 
	price NUMERIC(6,2),
	order_date DATE DEFAULT CURRENT_DATE,
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES moviecustomerjenn(customer_id)
);

create table moviesjenn(
	movie_id SERIAL PRIMARY KEY, 
	movietime INTEGER,
	ticket_id INTEGER NOT NULL,
	FOREIGN KEY(ticket_id) REFERENCES movieticketsjenn(ticket_id)
);

create table movieconcessionsjenn(
	item_id SERIAL PRIMARY KEY, 
	price NUMERIC(6,2),
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES moviecustomerjenn(customer_id)
);

--- no foriegn key data tables first