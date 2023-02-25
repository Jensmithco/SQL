insert INTO carcustomerjenn(
	customerx_id, 
	first_name,
	last_name,
	address,
	billing_info
)VALUES(
	1,
	'Jennifer',
	'Smith',
	'956 W Spruce Dr Denver,CO 80003',
	'555-87-9045 573 05/22'
);

insert INTO carsalespersonjenn(
	salesperson_id, 
    invoice
)VALUES(
	1,
	1234
);

insert INTO mechanicjenn(
	mechanic_id,
	first_name,
	last_name
)VALUES(
	1,
	'Bob',
	'Boberton'
);

insert INTO carjenn(
	carserialnumber,
	make,
	model,
	invoice,
	mechanic_id,		
    customerx_id,	
	salesperson_id
)VALUES(
	1,
	'Volvo',
	'XS4',
	1234,
	1,
	1,
	1
);

insert INTO partsjenn(
	partserialnumber,
	partname,
	price,
	carserialnumber
)VALUES(
	1,
	'Carburetor',
	276,
	1
);

insert INTO serviceDeptjenn(
	serviceticket,
	partnumber,
	customerx_id,
	carserialnumber,
	mechanic_id
)VALUES(
	1,
	1234,
	1,
	1,
	1
);

