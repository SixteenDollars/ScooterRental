-- write your table creation sql here!

CREATE TABLE CUSTOMER(
	customerID numeric,
	name text,
	email varchar(320),
	cell varchar,
	address varchar,
	flag text NULL,
	PRIMARY KEY(customerID)
);

CREATE TABLE REFFERALS(
	customerID numeric NOT NULL,
	name text NOT NULL,
	PRIMARY KEY(customerID, name)
);

CREATE TABLE RENTAL(
	customerID numeric NOT NULL,
	model numeric NOT NULL,
	borrowDate timestamp NOT NULL,
	dueDate date NOT NULL,
	charge money NOT NULL,
	returnDate timestamp NULL,
	addFees money NULL,
	notes text NULL,
	PRIMARY KEY(customerID, model, borrowDate)
);

CREATE TABLE SCOOTER(
	model bigserial NOT NULL,
	manufacturer text NOT NULL,
	country text NOT NULL,
	range numeric NOT NULL,
	weight numeric NOT NULL,
	topspeed numeric NOT NULL,
	condition text NOT NULL,
	availability text NOT NULL,
	PRIMARY KEY(model)
);

