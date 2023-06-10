CREATE TABLE PropertyType(
	PropertyTypeID Integer NOT NULL,
	Single Boolean,
	Duplex Boolean,
	MultiFamily Boolean,
	Condo Boolean,
	CONSTRAINT propertytype_pkey PRIMARY KEY(PropertyTypeID)
);

CREATE TABLE HeatingType(
	HeatingTypeID Integer NOT NULL,
	Gas Boolean,
	Electric Boolean,
	Wood Boolean,
	Propane Boolean,
	CONSTRAINT heatingtype_pkey PRIMARY KEY(HeatingTypeID)
);


CREATE TABLE StateDetails(
	StateID Integer NOT NULL,
	StateName Char(100),
	CONSTRAINT statedetails_pkey PRIMARY KEY(StateID)
);

CREATE TABLE Address(
	AddressID Integer NOT NULL,
	StreetAddress Char(200),
	ZipCode Char(200),
	City Char(50)
	StateName Char(50),
	CONSTRAINT address_pkey PRIMARY KEY(AddressID)
);

CREATE TABLE OwnerDetails(
	OwnerID Integer NOT NULL,
	AddressID Integer REFERENCES Address(AddressID) ON DELETE CASCADE,
	FirstName Char(100),
	LastName Char(100),
	Age Integer,
	CONSTRAINT ownerdetails_pkey PRIMARY KEY(OwnerID)
);

CREATE TABLE House(
	HouseID Integer NOT NULL,
	AddressID Integer NOT NULL REFERENCES Address(AddressID) ON DELETE CASCADE,
	OwnerID Integer NOT NULL REFERENCES OwnerDetails(OwnerID),
	StateID Integer NOT NULL REFERENCES StateDetails(StateID),
	Beds Integer,
	Bathrooms Numeric(3,2),
	PropertyTypeID Integer REFERENCES PropertyType(PropertyTypeID),
	Price Numeric(16,2),
	HeatingTypeID Integer REFERENCES HeatingType(HeatingTypeID),
	ForSale Boolean,
	AppliancesIncluded Boolean,
	YearBuilt Integer,
	CONSTRAINT house_pkey PRIMARY KEY(HouseID)
);

CREATE TABLE Income(
	IncomeID Integer NOT NULL,
	OwnerID Integer REFERENCES OwnerDetails(OwnerID),
	HouseID Integer REFERENCES House(HouseID),
	OwnerIncome Numeric(12,2),
	HouseholdIncome Numeric(12,2),
	CONSTRAINT income_pkey PRIMARY KEY(IncomeID)
);
