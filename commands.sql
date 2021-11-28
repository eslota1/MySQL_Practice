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
        price INT,
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
        agentId INT NOT NULL,
        name VARCHAR(30),
        phone CHAR(12),
        firmId INT NOT NULL,
        dateStarted DATE,
        PRIMARY KEY(agentId),
        FOREIGN KEY(firmId) REFERENCES Firm(id)
);

CREATE TABLE Listings(
        address VARCHAR(50),
        agentId INT,
        mlsNumber INT PRIMARY KEY,
        dateListed DATE,
        FOREIGN KEY(agentId) REFERENCES Agent(agentId),
        FOREIGN KEY(address) REFERENCES Property(address)
);

CREATE TABLE Buyer(
        id INT NOT NULL,
        name VARCHAR(30),
        phone CHAR(12),
        propertyType CHAR(20),
        bedrooms INT,
        bathrooms INT,
        businessPropertyType CHAR(20),
        minimumPreferredPrice INT,
        maximumPreferredPrice INT,
        PRIMARY KEY(id)
);

CREATE TABLE Works_With(
        buyerId INT,
        agentId INT,
        FOREIGN KEY(buyerId) REFERENCES Buyer(id),
        FOREIGN KEY(agentId) REFERENCES Agent(agentId)
);
