-- DDL Clauses: Data Definition Language
-- SQL CREATE STATEMENTS
-- name data_type column-constraint(if applicable)

CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	address VARCHAR(50),
	billing_info VARCHAR(50)
);

CREATE TABLE room(
	room_id SERIAL PRIMARY KEY,
	room_capacity NUMERIC (3)
);

CREATE TABLE concession(
	register_id SERIAL PRIMARY KEY,
	product_upc NUMERIC(10),
	payment_amount NUMERIC(6,2),
	customer_id INTEGER,
	FOREIGN KEY (customer_id)REFERENCES customer(customer_id)
);

CREATE TABLE movie(
	movie_id SERIAL PRIMARY KEY,
	movie_length NUMERIC (4),
	room_id INTEGER,
	FOREIGN KEY (room_id)REFERENCES room(room_id)
);

CREATE TABLE ticket(
	ticket_id SERIAL PRIMARY KEY,
	customer_id INTEGER,
	movie_id INTEGER,
	buy_time TIMESTAMP ,
	show_time TIMESTAMP, 
	room_id INTEGER,
	FOREIGN KEY (customer_id)REFERENCES customer(customer_id),
	FOREIGN KEY (movie_id)REFERENCES movie(movie_id),
	FOREIGN KEY (room_id)REFERENCES room(room_id)
);

-- Insertion of data into tables

-- Insert into customer table 

INSERT INTO customer (
	customer_id,
	first_name,
	last_name,
	address,
	billing_info
)VALUES(
	1,
	'Jonathan',
	'Contreras',
	'2634 W. 22nd Pl.',
	'4242-4242-4242-4242 623 05/24'
);

--insert into concession 

INSERT INTO concession(
	register_id,
	product_upc,
	payment_amount,
	customer_id
)values(
	1,
	12345689,
	20.00,
	1
);
--insert into movie
INSERT INTO movie(
	movie_id,
	movie_length,
	room_id
)VALUES(
	1,
	090,
	1
);

--insert into room
INSERT INTO room(
	room_id,
	room_capacity
)VALUES(
	1,
	50.00
);

--insert for ticket

INSERT INTO ticket(
	ticket_id,
	customer_id,
	movie_id,
	room_id
)VALUES	(
	1,
	1,
	1,
	1
	
);




