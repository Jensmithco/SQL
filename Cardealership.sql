CREATE TABLE carcustomerjenn(
	customerx_id SERIAL PRIMARY KEY, 
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	address VARCHAR(150),
	billing_info VARCHAR(150)		
);

CREATE TABLE carsalespersonjenn(
	salesperson_id SERIAL PRIMARY KEY, 
    invoice NUMERIC(6,2)	
);

CREATE TABLE mechanicjenn(
	mechanic_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100)
);

CREATE TABLE carjenn(
	carserialnumber SERIAL PRIMARY KEY,
	make VARCHAR(100),
	model VARCHAR(100),
	invoice NUMERIC(6,2),
	mechanic_id INTEGER not NULL,		
    customerx_id INTEGER not NULL,	
	salesperson_id INTEGER not NULL,
	FOREIGN KEY(mechanic_id) REFERENCES mechanicjenn(mechanic_id),    	
	FOREIGN KEY(customerx_id) REFERENCES carcustomerjenn(customerx_id),
    FOREIGN KEY(salesperson_id) REFERENCES carsalespersonjenn(salesperson_id)    
);

CREATE TABLE partsjenn(
	partserialnumber SERIAL PRIMARY KEY,
	partname VARCHAR(100),
	price NUMERIC(6,2),
	carserialnumber INTEGER not NULL,
	foreign KEY(carserialnumber) REFERENCES carjenn(carserialnumber)
);
	
CREATE TABLE serviceDeptjenn(
	serviceticket SERIAL PRIMARY KEY,
	partnumber NUMERIC(6,2),
	customerx_id INTEGER not NULL,
	carserialnumber INTEGER not NULL,
	mechanic_id INTEGER not NULL,
	FOREIGN KEY(customerx_id) REFERENCES carcustomerjenn(customerx_id),
	FOREIGN KEY(carserialnumber) REFERENCES carjenn(carserialnumber),
    FOREIGN KEY(mechanic_id) REFERENCES mechanicjenn(mechanic_id)    	
);