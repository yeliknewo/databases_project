DROP TABLE IF EXISTS UserDevices;
DROP TABLE IF EXISTS UserPreferences;

DROP TABLE IF EXISTS Users;
DROP TABLE IF EXISTS RestaurantFoods;
DROP TABLE IF EXISTS TheatreMovies;

DROP TABLE IF EXISTS Restaurants;
DROP TABLE IF EXISTS Houses;
DROP TABLE IF EXISTS Theatres;

DROP TABLE IF EXISTS Movies;
DROP TABLE IF EXISTS Foods;
DROP TABLE IF EXISTS Locations;

DROP TABLE IF EXISTS Devices;
DROP TABLE IF EXISTS Preferences;

CREATE TABLE Devices
(
    DeviceID            INT  AUTO_INCREMENT PRIMARY KEY NOT NULL,
    DeviceName          VARCHAR(20),
    DeviceType          VARCHAR(20),
    DeviceDescription   VARCHAR(50)
);

CREATE TABLE Preferences
(
    PreferenceID    INT  AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Type            VARCHAR(5)
);

CREATE TABLE Movies
(
    PreferenceID    INT,
    MovieID         INT  AUTO_INCREMENT PRIMARY KEY NOT NULL,
    MovieName       VARCHAR(20),
    Genre           VARCHAR(20),
    Description     VARCHAR(50),
    CONSTRAINT  Movies_FK1    FOREIGN KEY (PreferenceID)  REFERENCES  Preferences(PreferenceID)
);

CREATE TABLE Foods
(
    PreferenceID    INT,
    FoodID          INT  AUTO_INCREMENT PRIMARY KEY NOT NULL,
    FoodName        VARCHAR(20),
    FoodType        VARCHAR(20),
    CONSTRAINT  Foods_FK1   FOREIGN KEY (PreferenceID)  REFERENCES  Preferences(PreferenceID)
);

CREATE TABLE Locations
(
    PreferenceID    INT,
    LocationID      INT  AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Address         VARCHAR(20),
    City            VARCHAR(20),
    State           VARCHAR(2),
    ZipCode         VARCHAR(5),
    CONSTRAINT  Locations_FK1   FOREIGN KEY (PreferenceID)  REFERENCES  Preferences(PreferenceID)
);

CREATE TABLE Restaurants
(
    LocationID      INT,
    RestaurantID    INT  AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Cuisine         VARCHAR(20),
    CONSTRAINT  Restaurants_FK2 FOREIGN KEY (LocationID)    REFERENCES  Locations(LocationID)
);

CREATE TABLE Houses
(
    HouseID     INT  AUTO_INCREMENT PRIMARY KEY NOT NULL,
    LocationID  INT,
    CONSTRAINT  Houses_FK1  FOREIGN KEY (LocationID)    REFERENCES  Locations(LocationID)
);

CREATE TABLE Theatres
(
    TheatreID   INT  AUTO_INCREMENT PRIMARY KEY NOT NULL,
    LocationID  INT,
    TheatreName VARCHAR(20),
    CONSTRAINT  Theatres_FK1    FOREIGN KEY (LocationID)    REFERENCES  Locations(LocationID)
);

CREATE TABLE Users
(
    UserID  INT  AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Name    VARCHAR(20),
    Age     NUMERIC(3),
    HouseID INT,
    CONSTRAINT  Users_FK1    FOREIGN KEY (HouseID)    REFERENCES  Houses(HouseID)
);

CREATE TABLE RestaurantFoods
(
    RestaurantID    INT,
    FoodID          INT,
    CONSTRAINT  RestaurantFoods_FK1 FOREIGN KEY (RestaurantID)  REFERENCES  Restaurants(RestaurantID),
    CONSTRAINT  RestaurantFoods_FK2 FOREIGN KEY (FoodID)        REFERENCES  Foods(FoodID)
);

CREATE TABLE TheatreMovies
(
    TheatreID   INT,
    MovieID     INT,
    CONSTRAINT  TheatreMovies_FK1   FOREIGN KEY (TheatreID) REFERENCES  Theatres(TheatreID),
    CONSTRAINT  TheatreMovies_FK2   FOREIGN KEY (MovieID)   REFERENCES  Movies(MovieID)
);

CREATE TABLE UserDevices
(
    UserID      INT,
    DeviceID    INT,
    CONSTRAINT  UserDevices_FK1 FOREIGN KEY (UserID)    REFERENCES  Users(UserID),
    CONSTRAINT  UserDevices_FK2 FOREIGN KEY (DeviceID)  REFERENCES  Devices(DeviceID)
);

CREATE TABLE UserPreferences
(
    UserID          INT,
    PreferenceID    INT,
    P_Rank          INT,
    CONSTRAINT  UserPreferences_FK1 FOREIGN KEY (UserID)        REFERENCES  Users(UserID),
    CONSTRAINT  UserPreferences_FK2 FOREIGN KEY (PreferenceID)  REFERENCES  Preferences(PreferenceID)
);
