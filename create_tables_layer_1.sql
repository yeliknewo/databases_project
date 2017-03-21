DROP TABLE IF EXISTS UserDevices;
DROP TABLE IF EXISTS UserPreferences;

DROP TABLE IF EXISTS Users;
DROP TABLE IF EXISTS TheatreMovies;

DROP TABLE IF EXISTS MoviePreferences;
DROP TABLE IF EXISTS FoodPreferences;
DROP TABLE IF EXISTS RestaurantFoods;
DROP TABLE IF EXISTS RestaurantLocations;
DROP TABLE IF EXISTS LocationPreferences;
DROP TABLE IF EXISTS Houses;
DROP TABLE IF EXISTS Theatres;

DROP TABLE IF EXISTS Devices;
DROP TABLE IF EXISTS Preferences;
DROP TABLE IF EXISTS Movies;
DROP TABLE IF EXISTS Foods;
DROP TABLE IF EXISTS Restaurants;
DROP TABLE IF EXISTS Locations;

CREATE TABLE Devices
(
    DeviceID            NUMERIC(5)  PRIMARY KEY NOT NULL,
    DeviceName          VARCHAR(20),
    DeviceType          VARCHAR(5),
    DeviceDescription   VARCHAR(50)
);

CREATE TABLE Preferences
(
    PreferenceID    NUMERIC(5)  PRIMARY KEY NOT NULL,
    Type            VARCHAR(5)
);

CREATE TABLE Movies
(
    MovieID         NUMERIC(5)  PRIMARY KEY NOT NULL,
    MovieName       VARCHAR(20),
    Genre           VARCHAR(20),
    Description     VARCHAR(50)
);

CREATE TABLE Foods
(
    FoodID          NUMERIC(5)  PRIMARY KEY NOT NULL,
    FoodName        VARCHAR(20),
    FoodType        VARCHAR(20)
);

CREATE TABLE Restaurants
(
    RestaurantID    NUMERIC(5)  PRIMARY KEY NOT NULL,
    Cuisine         VARCHAR(20)
);

CREATE TABLE Locations
(
    LocationID      NUMERIC(5)  PRIMARY KEY NOT NULL,
    Address         VARCHAR(20),
    City            VARCHAR(20),
    State           VARCHAR(2),
    ZipCode         VARCHAR(5)
);
