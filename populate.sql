-- Elisabeth Slota and Madison Cuellar
-- Professor Schwartz
-- COP4710
-- 2 December 2021

--Populating tables

-- Houses put into Property
INSERT INTO Property (adress, ownerName, price)
VALUES ('125 sesame street', 'Bert', 150001);

INSERT INTO Property (adress, ownerName, price)
VALUES ('1567 FSU manor', 'Bert', 400000);

INSERT INTO Property (adress, ownerName, price)
VALUES ('809 rodeo drive', 'Elisabeth', 300000);

INSERT INTO Property (adress, ownerName, price)
VALUES ('1590 community way', 'Madi', 359000);

INSERT INTO Property (adress, ownerName, price)
VALUES ('1798 wall street', 'Berthalemule', 150000);

--Businesses put into Property

INSERT INTO Property (adress, ownerName, price)
VALUES ('1250 jefferson street', 'columbo', 324000);

INSERT INTO Property (adress, ownerName, price)
VALUES ('125 alabama way', 'obama', 400000);

INSERT INTO Property (adress, ownerName, price)
VALUES ('5322 shein road', 'bezos', 100000);

INSERT INTO Property (adress, ownerName, price)
VALUES ('1895 Madalorian road', 'mando', 908734);

INSERT INTO Property (adress, ownerName, price)
VALUES ('2364 yoda lane', 'ray', 500350);

-- Houses
INSERT INTO House (adress, ownerName, price, bedrooms, bathrooms, size)
VALUES ('125 sesame street', 'Bert', 150001, 3, 2, 400);

INSERT INTO House (adress, ownerName, price, bedrooms, bathrooms, size)
VALUES ('1567 FSU manor', 'Bert', 400000, 5, 4, 800);

INSERT INTO House (adress, ownerName, price, bedrooms, bathrooms, size)
VALUES ('809 rodeo drive', 'Elisabeth', 300000, 3, 2, 700);

INSERT INTO House (adress, ownerName, price, bedrooms, bathrooms, size)
VALUES ('1590 community way', 'Madi', 359000, 3, 2, 750);

INSERT INTO House (adress, ownerName, price, bedrooms, bathrooms, size)
VALUES ('1798 wall street', 'Berthalemule', 150000, 7, 5, 1300);

--Businesses
INSERT INTO BusinessProperty (adress, ownerName, price, type, size)
VALUES ('1250 jefferson street', 'columbo', 324000, 'office space', 900);

INSERT INTO BusinessProperty (adress, ownerName, price, type, size)
VALUES ('125 alabama way', 'obama', 400000, 'gas station', 1300);

INSERT INTO BusinessProperty (adress, ownerName, price, type, size)
VALUES ('5322 shein road', 'bezos', 100000, 'store front', 1000);

INSERT INTO Property (adress, ownerName, price)
VALUES ('1895 Madalorian road', 'mando', 908734, 'store front', 950);

INSERT INTO Property (adress, ownerName, price)
VALUES ('2364 yoda lane', 'ray', 500350, 'office space',1200);

--Firm
INSERT INTO Firm (id, name, address)
VALUES (1, 'House Sellers', ' 2334 we buy houses lane')

INSERT INTO Firm (id, name, address)
VALUES (2, 'also sells houses', ' 1990 house for sale road')

INSERT INTO Firm (id, name, address)
VALUES (3, 'the house group', ' 622 selling way')

INSERT INTO Firm (id, name, address)
VALUES (4, 'housing specialists', '9074 southwestern lane')

INSERT INTO Firm (id, name, address)
VALUES (5, 'runway agency', '250 gerogia road')

--Agent
INSERT INTO Agent (agentId, name, phone, firmId, dateStarted)
VALUES (002,'melissa matthews','287-899-9073', 1, '2000-02-11')

INSERT INTO Agent (agentId, name, phone, firmId, dateStarted)
VALUES (090,'mark zuckerberg','789-900-2398', 3, '2010-11-21')

INSERT INTO Agent (agentId, name, phone, firmId, dateStarted)
VALUES (134,'bill gates','453-239-9038', 2, '2008-03-13')

INSERT INTO Agent (agentId, name, phone, firmId, dateStarted)
VALUES (854,'kurtis conner','453-900-1254', 4, '2019-11-14')

INSERT INTO Agent (agentId, name, phone, firmId, dateStarted)
VALUES (120,'noel miller','760-564-8990', 5, '2015-07-02')


--Listings
    -- houses
INSERT INTO Listings(address, agentId, mlsNumber, dateListed)
VALUES ('125 sesame street', 120, 1240, '2021-11-30')

INSERT INTO Listings(address, agentId, mlsNumber, dateListed)
VALUES ('809 rodeo drive', 090, 3564, '2021-02-17')

INSERT INTO Listings(address, agentId, mlsNumber, dateListed)
VALUES ('1798 wall street', 002, 7649, '2020-10-06')

    --businesses
INSERT INTO Listings(address, agentId, mlsNumber, dateListed)
VALUES ('125 alabama way', 134, 9210, '2019-06-16')

INSERT INTO Listings(address, agentId, mlsNumber, dateListed)
VALUES ('2364 yoda lane', 854, 4965, '2021-09-22')

INSERT INTO Listings(address, agentId, mlsNumber, dateListed)
VALUES ('5322 shein road', 854, 9231, '2021-01-03')


--Buyer
INSERT INTO Buyer(id, name, phone, propertyType, bedrooms, bathrooms, businessPropertyType, maximumPreferredPrice, minimumPreferredPrice)
VALUES(112, 'brock', '954-566-3265', 'House', 3, 2, NULL , 500000, 150000)

INSERT INTO Buyer(id, name, phone, propertyType, bedrooms, bathrooms, businessPropertyType, maximumPreferredPrice, minimumPreferredPrice)
VALUES(863, 'melina', '500-986-3265', 'House', 5, 4, NULL , 300000, 200000)

INSERT INTO Buyer(id, name, phone, propertyType, bedrooms, bathrooms, businessPropertyType, maximumPreferredPrice, minimumPreferredPrice)
VALUES(436, 'rick', '362-669-4596', 'House', 2, 2, NULL , 400000, 200000)

INSERT INTO Buyer(id, name, phone, propertyType, bedrooms, bathrooms, businessPropertyType, maximumPreferredPrice, minimumPreferredPrice)
VALUES(007, 'morty', '336-402-7732', 'Bussiness', NULL, NULL, 'office space' , 40000, 500000)

INSERT INTO Buyer(id, name, phone, propertyType, bedrooms, bathrooms, businessPropertyType, maximumPreferredPrice, minimumPreferredPrice)
VALUES(543, 'summer', '366-896-7854', 'Bussiness', NULL, NULL, 'gas station' , 450000, 250000)

--Works with
INSERT INTO Works_With(buyerId, agentId)
VALUES(112,090)

INSERT INTO Works_With(buyerId, agentId)
VALUES(863,134)

INSERT INTO Works_With(buyerId, agentId)
VALUES(436,854)

INSERT INTO Works_With(buyerId, agentId)
VALUES(007,120)

INSERT INTO Works_With(buyerId, agentId)
VALUES(543,120)
