insert INTO moviecustomerjenn(
	customer_id, 
	first_name,
	last_name,
	billing_info
)VALUES(
	1,
	'Jennifer',
	'Smith',
	'555-87-9045 573 05/22'
);

insert INTO movieticketsjenn(
	ticket_id, 
	price,
	order_date,
	customer_id
)VALUES(
	1,
	7.50,
	'04/23/21',
	1
);

insert INTO moviesjenn(
	movie_id, 
	movietime,
	ticket_id
)VALUES(
	1,
	1300,
	1
);

insert INTO movieconcessionsjenn(
	item_id, 
	price,
	customer_id
)VALUES(
	1,
	7.50,
	1
);