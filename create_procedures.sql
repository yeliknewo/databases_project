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
