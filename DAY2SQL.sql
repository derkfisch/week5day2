CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	age_id INTEGER NOT NULL,
	name_id VARCHAR NOT NULL
);

SELECT *
FROM customer;

CREATE TABLE ticket(
	ticket_id SERIAL PRIMARY KEY,
	ticketdate_id TIMESTAMP NOT NULL
);

SELECT *
FROM ticket;

ALTER TABLE ticket
ADD FOREIGN KEY(customer_id) REFERENCES customer(customer_id);

DROP TABLE ticket;

CREATE TABLE ticket(
	ticket_id SERIAL PRIMARY KEY,
	ticketdate_id TIMESTAMP NOT NULL,
	customer_id
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

--customer_id is apparently non existant but I've created a table and column to REFERENCES
--going to create the table without it still just to keep moving

CREATE TABLE ticket(
	ticket_id SERIAL PRIMARY KEY,
	ticketdate_id TIMESTAMP NOT NULL,
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

--nevermind!! I fixed it :)

CREATE TABLE theater(
	theater_id SERIAL PRIMARY KEY,
	address_id VARCHAR NOT NULL,
	email_id VARCHAR NOT NULL
);


CREATE TABLE movie(
	movie_id SERIAL PRIMARY KEY,
	movietime_id INTEGER,
	theater_id INTEGER,
	FOREIGN KEY(theater_id) REFERENCES theater(theater_id)
);

CREATE TABLE ticket_movie(
	movie_id INTEGER NOT NULL,
	FOREIGN KEY(movie_id) REFERENCES movie(movie_id),
	ticket_id INTEGER NOT NULL,
	FOREIGN KEY(ticket_id) REFERENCES ticket(ticket_id)
);

