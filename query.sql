-- 1
SELECT Listings.address
FROM House, Listings
WHERE Listings.address = House.address;

-- 2
SELECT Listings.address, Listings.mlsNumber
FROM House, Listings
WHERE Listings.address = House.address;

-- 3
SELECT Listings.address
FROM House, Listings
WHERE Listings.address = House.address AND House.bedrooms = 3 AND House.bathrooms = 2;

-- 4
-- is this right?????
SELECT address, price
FROM House
WHERE bedrooms = 3 AND bathrooms = 2 AND price >= 100000 AND price <= 250000
ORDER BY price DESC;

-- 5
SELECT address, price
FROM BusinessProperty
WHERE type = 'office space'
ORDER BY price DESC;

-- 6
SELECT agentId, Agent.name, phone, Firm.name, dateStarted
FROM Agent, Firm
WHERE Agent.firmId = Firm.id;

-- 7
SELECT Property.*
FROM Property, Listings
WHERE Property.address = Listings.address AND Listings.agentId = 002;

--8
SELECT Agent.name AS "Agent Name", Buyer.name AS "Buyer Name"
FROM Agent, Buyer, Works_With
WHERE Agent.agentId = Works_With.agentId AND Buyer.id = Works_With.buyerId
ORDER BY Agent.name;

-- 9
SELECT Agent.agentId,
(SELECT COUNT(Works_With.buyerId)
FROM Works_With
WHERE Agent.agentID = Works_With.agentId) AS "Number of Buyers Working with Agent"
FROM Agent, Buyer, Works_With
WHERE Agent.agentId = Works_With.agentId AND Buyer.id = Works_With.buyerId;


-- 10
SELECT House.*
FROM House, Buyer
WHERE Buyer.id = 863 AND
      Buyer.bedrooms = House.bedrooms AND
      Buyer.bathrooms = House.bathrooms AND
      Buyer.minimumPreferredPrice <= House.price AND
      Buyer.maximumPreferredPrice >= House.price
ORDER BY House.price DESC;