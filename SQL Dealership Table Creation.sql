-- Sales Person Table Creation
create table sales_person(
	seller_id SERIAL primary key,
	first_name VARCHAR(150),
	last_name VARCHAR(150)
);

-- Cars Table Creation
create table cars(
	VIN SERIAL primary key,
	car_make VARCHAR(150),
	car_model VARCHAR(150),
	year_made VARCHAR(150)
);

-- Customer Table Creation
create table dealership_customer(
	customer_id SERIAL primary key,
	first_name VARCHAR(150),
	last_name VARCHAR(150)
);

-- Invoice Table Creation
create table invoices(
	invoice_number SERIAL primary key,
	date_sold date,
	seller_id INTEGER,
	VIN INTEGER,
	customer_id INTEGER,
	FOREIGN KEY (seller_id) REFERENCES sales_person (seller_id),
	FOREIGN KEY (VIN) REFERENCES cars (VIN),
	FOREIGN KEY (customer_id) references dealership_customer (customer_id)
);

-- Mechanics Table Creation
create table mechanics(
	mechanic_id SERIAL primary key,
	first_name VARCHAR(150),
	last_name VARCHAR(150)
);

-- Service Ticket Table Creation
create table service_tickets(
	ticket_number SERIAL primary key,
	service_type VARCHAR(500),
	VIN INTEGER,
	mechanic_id INTEGER,
	customer_id INTEGER,
	FOREIGN KEY (VIN) REFERENCES cars (VIN),
	FOREIGN KEY (mechanic_id) REFERENCES mechanics (mechanic_id),
	FOREIGN KEY (customer_id) REFERENCES dealership_customer (customer_id)
);

-- Service History Table Creation
create table service_history1(
	file_number SERIAL primary key,
	VIN INTEGER,
	service_type VARCHAR(500),
	FOREIGN KEY (VIN) REFERENCES cars (VIN),
	FOREIGN KEY (service_type) REFERENCES service_tickets (service_type)
);