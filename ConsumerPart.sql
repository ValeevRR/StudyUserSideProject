CREATE TABLE СStatus(
	statusid SERIAL PRIMARY KEY,
	statusname TEXT NOT NULL
);

CREATE TABLE SNomenclature(
	nomenclatureid SERIAL PRIMARY KEY,
	nomenclaturename TEXT NOT NULL,
	nomenclatureabout TEXT,
	nomenclatureidcdb INTEGER UNIQUE NOT NULL
);

CREATE TABLE ROrder(
	orderid SERIAL PRIMARY KEY,
	orderbudget INTEGER NOT NULL,
	orderstartdate DATE NOT NULL,
	orderenddate DATE,
	orderstatusid INTEGER REFERENCES СStatus(statusid)
);

CREATE TABLE RNeeds(
	needsid SERIAL PRIMARY KEY,
	needscount INTEGER NOT NULL,
	needsnomenclatureid INTEGER REFERENCES SNomenclature(nomenclatureid),
	needsorderid INTEGER REFERENCES ROrder(orderid)
);
