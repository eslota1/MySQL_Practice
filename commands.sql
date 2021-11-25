-- Elisabeth Slota and Madison Cuellar
-- Professor Schwartz
-- COP4710
-- 2 December 2021

-- creating tables
CREATE TABLE Property(
        address VARCHAR(50) NOT NULL,
        ownerName VARCHAR(30),
        price INT,
        PRIMARY KEY(address)
);

CREATE TABLE House(
        address VARCHAR(50) NOT NULL,
        ownerName VARCHAR(30),
        price INT
        bedrooms INT,
        bathrooms INT,
        size INT,
        FOREIGN KEY(address) REFERENCES Property(address)
);

CREATE TABLE BusinessProperty(
        address VARCHAR(50),
        ownerName VARCHAR(30),
        price INT
        type CHAR(20),
        size INT,
        FOREIGN KEY(address) REFERENCES Property(address)
);

CREATE TABLE Firm(
        id INT NOT NULL,
        name VARCHAR(30),
        address VARCHAR(50),
        PRIMARY KEY(id)
);

CREATE TABLE Agent(
);

CREATE TABLE Listings(
);

CREATE TABLE Buyer(
);

CREATE TABLE Works_With(
);
