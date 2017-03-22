DROP PROCEDURE IF EXISTS add_movie;

DELIMITER //

CREATE PROCEDURE add_movie (IN I_MovieName VARCHAR(20), IN I_Genre VARCHAR(20), IN I_Description VARCHAR(50))
BEGIN
    DECLARE my_id integer;
    INSERT INTO Preferences(Type) VALUES ("Movie");
    SET my_id = LAST_INSERT_ID();
    INSERT INTO Movies(PreferenceID, MovieName, Genre, Description) VALUES (my_id, I_MovieName, I_Genre, I_Description);
END //

DELIMITER ;

DROP PROCEDURE IF EXISTS add_food;

DELIMITER //

CREATE PROCEDURE add_food (IN I_FoodName VARCHAR(20), IN I_FoodType VARCHAR(20))
BEGIN
    DECLARE my_id integer;
    INSERT INTO Preferences(Type) VALUES ("Food");
    SET my_id = LAST_INSERT_ID();
    INSERT INTO Foods(PreferenceID, FoodName, FoodType) VALUES (my_id, I_FoodName, I_FoodType);
END //

DELIMITER ;

DROP PROCEDURE IF EXISTS add_location;

DELIMITER //

CREATE PROCEDURE add_location (IN I_Address VARCHAR(20), IN I_City VARCHAR(20), IN I_State VARCHAR(2), IN I_ZipCode VARCHAR(5))
BEGIN
    DECLARE my_id integer;
    INSERT INTO Preferences(Type) VALUES ("Loc");
    SET my_id = LAST_INSERT_ID();
    INSERT INTO Locations(PreferenceID, Address, City, State, ZipCode) VALUES (my_id, I_Address, I_City, I_State, I_ZipCode);
END //

DELIMITER ;

DROP PROCEDURE IF EXISTS add_restaurant;

DELIMITER //

CREATE PROCEDURE add_restaurant (IN I_Address VARCHAR(20), IN I_City VARCHAR(20), IN I_State VARCHAR(2), IN I_ZipCode VARCHAR(5), IN I_Cuisine VARCHAR(20))
BEGIN
    DECLARE my_id INT;
    CALL add_location(I_Address, I_City, I_State, I_ZipCode);
    SET my_id = LAST_INSERT_ID();
    INSERT INTO Restaurants(LocationID, Cuisine) VALUES (my_id, I_Cuisine);
END //

DELIMITER ;

DROP PROCEDURE IF EXISTS add_house;

DELIMITER //

CREATE PROCEDURE add_house (IN I_Address VARCHAR(20), IN I_City VARCHAR(20), IN I_State VARCHAR(2), IN I_ZipCode VARCHAR(5))
BEGIN
    DECLARE my_id INT;
    CALL add_location(I_Address, I_City, I_State, I_ZipCode);
    SET my_id = LAST_INSERT_ID();
    INSERT INTO Houses(LocationID) VALUES (my_id);
END //

DELIMITER ;

DROP PROCEDURE IF EXISTS add_theatre;

DELIMITER //

CREATE PROCEDURE add_theatre (IN I_Address VARCHAR(20), IN I_City VARCHAR(20), IN I_State VARCHAR(2), IN I_ZipCode VARCHAR(5), IN I_TheatreName VARCHAR(20))
BEGIN
    DECLARE my_id INT;
    CALL add_location(I_Address, I_City, I_State, I_ZipCode);
    SET my_id = LAST_INSERT_ID();
    INSERT INTO Theatres(LocationID, TheatreName) VALUES (my_id, I_TheatreName);
END //

DELIMITER ;

DROP PROCEDURE IF EXISTS add_user;

DELIMITER //

CREATE PROCEDURE add_user (IN I_Address VARCHAR(20), IN I_City VARCHAR(20), IN I_State VARCHAR(2), IN I_ZipCode VARCHAR(5), IN I_Name VARCHAR(20), IN I_Age NUMERIC(3))
BEGIN
    DECLARE my_id INT;
    CALL add_house(I_Address, I_City, I_State, I_ZipCode);
    SET my_id = LAST_INSERT_ID();
    INSERT INTO Users(Name, Age, HouseID) VALUES (I_Name, I_Age, my_id);
END //

DELIMITER ;
