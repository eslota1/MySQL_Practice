-- Elisabeth Slota and Madison Cuellar
-- Professor Schwartz
-- COP4710
-- 2 December 2021

--Populating tables

-- Houses put into Property
INSERT INTO Property (adress, ownerName, price)
VALUES ('125 sesame street', 'Bert', '150001');

INSERT INTO Property (adress, ownerName, price)
VALUES ('1567 FSU manor', 'Bert', '400000');

INSERT INTO Property (adress, ownerName, price)
VALUES ('809 rodeo drive', 'Elisabeth', '3000000');

INSERT INTO Property (adress, ownerName, price)
VALUES ('1590 community way', 'Madi', '359000');

INSERT INTO Property (adress, ownerName, price)
VALUES ('1798 wall street', 'Berthalemule', '150000');

--Businesses put into Property

INSERT INTO Property (adress, ownerName, price)
VALUES ('1250 jefferson street', 'columbo', '324000');

INSERT INTO Property (adress, ownerName, price)
VALUES ('125 alabama way', 'obama', '40000000');

INSERT INTO Property (adress, ownerName, price)
VALUES ('5322 shein road', 'bezos', '1000000');

-- Houses
INSERT INTO House (adress, ownerName, price, bedrooms, bathrooms, size)
VALUES ('125 sesame street', 'Bert', '150001', '3', '2', '400');

INSERT INTO House (adress, ownerName, price, bedrooms, bathrooms, size)
VALUES ('1567 FSU manor', 'Bert', '400000', '5', '4', '800');

INSERT INTO House (adress, ownerName, price, bedrooms, bathrooms, size)
VALUES ('809 rodeo drive', 'Elisabeth', '3000000', '3', '2', '700');

INSERT INTO House (adress, ownerName, price, bedrooms, bathrooms, size)
VALUES ('1590 community way', 'Madi', '359000', '3', '2', '750');

INSERT INTO House (adress, ownerName, price, bedrooms, bathrooms, size)
VALUES ('1798 wall street', 'Berthalemule', '150000', '7', '5', '1300');

--Businesses
INSERT INTO BusinessProperty (adress, ownerName, price, type, size)
VALUES ('1250 jefferson street', 'columbo', '324000', 'office space', '900');

INSERT INTO BusinessProperty (adress, ownerName, price, type, size)
VALUES ('125 alabama way', 'obama', '40000000', 'gas station', '1300');

INSERT INTO BusinessProperty (adress, ownerName, price, type, size)
VALUES ('5322 shein road', 'bezos', '1000000', 'store front', '1000');

--Firm
INSERT INTO Firm (id, name, address)
VALUES ('1', "House Sellers", " 2334 we buy houses lane")

INSERT INTO Firm (id, name, address)
VALUES ('2', "also sells houses", " 1990 house for sale road")

INSERT INTO Firm (id, name, address)
VALUES ('3', "the house group", " 622 selling way")

--Agent
INSERT INTO Agent (agentId, name, phone, firmId, dateStarted)
VALUES ('002',"melissa matthews","287-899-9073", "1", "2000-02-11")

INSERT INTO Agent (agentId, name, phone, firmId, dateStarted)
VALUES ('090',"mark zuckerberg","789-900-2398", "3", "2010-11-21")

INSERT INTO Agent (agentId, name, phone, firmId, dateStarted)
VALUES ('134',"bill gates","453-239-9038", "2", "2008-03-13")

INSERT INTO Agent (agentId, name, phone, firmId, dateStarted)
VALUES ('028',"ray romano","890-289-7763", "1", "2020-05-8")
