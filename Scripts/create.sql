
CREATE TABLE Company
(
	CompanyId            INTEGER NOT NULL,
	Name                 VARCHAR(20) NULL
);



ALTER TABLE Company
ADD PRIMARY KEY (CompanyId);



CREATE TABLE Contract
(
	ContractID           INTEGER NOT NULL,
	DateOfContract       DATE NULL,
	DateOfPayment        DATE NULL,
	CostOfObject         INTEGER NULL,
	EmployeeID           INTEGER NOT NULL,
	ContractType         VARCHAR(20) NULL,
	OwnerPassportNumber  INTEGER NOT NULL,
	ClientPassportNumber INTEGER NOT NULL
);



ALTER TABLE Contract
ADD PRIMARY KEY (ContractID);



CREATE TABLE District
(
	DistrictId           CHAR(18) NOT NULL,
	City                 VARCHAR(20) NULL,
	Name                 VARCHAR(20) NULL
);



ALTER TABLE District
ADD PRIMARY KEY (DistrictId);



CREATE TABLE Employee
(
	EmployeeID           INTEGER NOT NULL,
	Surname              CHAR(18) NULL,
	Name                 CHAR(18) NULL,
	CompanyId            INTEGER NOT NULL
);



ALTER TABLE Employee
ADD PRIMARY KEY (EmployeeID);



CREATE TABLE PassportClient
(
	PassportNumber       INTEGER NOT NULL,
	Date                 DATE NULL,
	CodeOffice           INTEGER NULL,
	Family               CHAR(18) NULL,
	Name                 VARCHAR(20) NULL,
	Surname              VARCHAR(20) NOT NULL,
	City                 CHAR(18) NULL,
	Age                  INTEGER NULL
);



ALTER TABLE PassportClient
ADD PRIMARY KEY (PassportNumber);



CREATE TABLE RealEstateObject
(
	ObjectId             INTEGER NOT NULL,
	Address              TEXT NULL,
	Square               INTEGER NULL,
	ObjectType           VARCHAR(20) NULL,
	DistrictId           CHAR(18) NOT NULL,
	OwnerPassportNumber  INTEGER NOT NULL
);



ALTER TABLE RealEstateObject
ADD PRIMARY KEY (ObjectId);



ALTER TABLE Contract
ADD FOREIGN KEY (EmployeeID) REFERENCES Employee (EmployeeID);



ALTER TABLE Contract
ADD FOREIGN KEY R_16 (OwnerPassportNumber) REFERENCES PassportClient (PassportNumber);



ALTER TABLE Contract
ADD FOREIGN KEY R_19 (ClientPassportNumber) REFERENCES PassportClient (PassportNumber);



ALTER TABLE Employee
ADD FOREIGN KEY R_14 (CompanyId) REFERENCES Company (CompanyId);



ALTER TABLE RealEstateObject
ADD FOREIGN KEY R_12 (DistrictId) REFERENCES District (DistrictId);



ALTER TABLE RealEstateObject
ADD FOREIGN KEY R_13 (OwnerPassportNumber) REFERENCES PassportClient (PassportNumber);


