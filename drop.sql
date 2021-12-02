SET FOREIGN_KEY_CHECKS=0; -- to disable them
DELETE FROM Agent;
DELETE FROM Buyer;
DELETE FROM Firm;
DELETE FROM House;
DELETE FROM Listings;
DELETE FROM Property;
DELETE FROM Works_With;
DELETE FROM BusinessProperty;
SET FOREIGN_KEY_CHECKS=1; -- to re-enable them
