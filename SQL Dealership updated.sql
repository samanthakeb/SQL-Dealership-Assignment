-- Sales Person Data
insert into sales_person(
	seller_id,
	first_name,
	last_name
)VALUES(
	1212,
	'Juniper',
	'Keb'
);

insert into sales_person(
	seller_id,
	first_name,
	last_name
)VALUES(
	1010,
	'Jessica',
	'Duke'
);

-- Cars Data
BEGIN TRANSACTION;

INSERT INTO cars (VIN, car_make, car_model, year_made)
VALUES 
    (1516517, 'Toyota', 'Prius', 2016),
    (2565454, 'Honda', 'Civic', 2022),
    (5658945, 'Ford', 'Fusion', 2010);
   
COMMIT;


insert into cars(
	VIN,
	car_make,
	car_model,
	year_made
)VALUES(
	3568742,
	'Hyundai',
	'Palisade',
	2021
);

insert into cars(
	VIN,
	car_make,
	car_model,
	year_made
)VALUES(
	5499115,
	'BMW',
	'330i',
	2018
);

-- Customer Data
insert into dealership_customer(
	customer_id,
	first_name,
	last_name
)VALUES(
	0913,
	'Christy',
	'Lea'
);

insert into dealership_customer(
	customer_id,
	first_name,
	last_name
)VALUES(
	0216,
	'Ricardo',
	'Anthony'
);

-- Invoice Data
insert into invoices(
	invoice_number,
	date_sold,
	seller_id,
	VIN,
	customer_id
)VALUES(
	4589,
	'01/15/2021',
	1212,
	3568742,
	0913
);

insert into invoices(
	invoice_number,
	date_sold,
	seller_id,
	VIN,
	customer_id
)VALUES(
	4896,
	'09/04/2018',
	1010,
	5499115,
	0913
);

update invoices 
set customer_id = 0216
where invoice_number = 4896;

-- Mechanics Data
insert into mechanics(
	mechanic_id,
	first_name,
	last_name
)VALUES(
	45,
	'Tony',
	'Coleman'
);

insert into mechanics(
	mechanic_id,
	first_name,
	last_name
)VALUES(
	89,
	'Raymond',
	'Jones'
);

-- Service Tickets Data
insert into service_tickets(
	ticket_number,
	service_type,
	VIN,
	mechanic_id,
	customer_id
)VALUES(
	555,
	'Oil Change',
	3568742,
	89,
	0913
);

insert into service_tickets(
	ticket_number,
	service_type,
	VIN,
	mechanic_id,
	customer_id
)VALUES(
	236,
	'Tire Rotation',
	5499115,
	45,
	0216
);

-- Service History Data
insert into service_history1(
	file_number,
	VIN,
	service_type
)VALUES(
	833,
	5499115,
	'Tire Rotation'
);

insert into service_history1(
	file_number,
	VIN,
	service_type
)VALUES(
	233,
	3568742,
	'Oil Change'
);

