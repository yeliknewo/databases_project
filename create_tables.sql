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

CREATE TABLE MoviePreferences
(
    PreferenceID    NUMERIC(5),
    MovieID         NUMERIC(5),
    CONSTRAINT  MoviePreferences_FK1    FOREIGN KEY (PreferenceID)  REFERENCES  Preferences(PreferenceID),
    CONSTRAINT  MoviePreferences_FK2    FOREIGN KEY (MovieID)       REFERENCES  Movies(MovieID)
);

CREATE TABLE FoodPreferences
(
    PreferenceID    NUMERIC(5),
    FoodID          NUMERIC(5),
    CONSTRAINT  FoodPreferences_FK1 FOREIGN KEY (PreferenceID)  REFERENCES  Preferences(PreferenceID),
    CONSTRAINT  FoodPreferences_FK2 FOREIGN KEY (FoodID)        REFERENCES  Foods(FoodID)
);

CREATE TABLE RestaurantFoods
(
    RestaurantID    NUMERIC(5),
    FoodID          NUMERIC(5),
    CONSTRAINT  RestaurantFoods_FK1 FOREIGN KEY (RestaurantID)  REFERENCES  Restaurants(RestaurantID),
    CONSTRAINT  RestaurantFoods_FK2 FOREIGN KEY (FoodID)        REFERENCES  Foods(FoodID)
);

CREATE TABLE RestaurantLocations
(
    RestaurantID    NUMERIC(5),
    LocationID      NUMERIC(5),
    CONSTRAINT  RestaurantLocations_FK1 FOREIGN KEY (RestaurantID)  REFERENCES  Restaurants(RestaurantID),
    CONSTRAINT  RestaurantLocations_FK2 FOREIGN KEY (LocationID)    REFERENCES  Locations(LocationID)
);

CREATE TABLE LocationPreferences
(
    PreferenceID    NUMERIC(5),
    LocationID      NUMERIC(5),
    CONSTRAINT  LocationPreferences_FK1 FOREIGN KEY (PreferenceID)  REFERENCES  Preferences(PreferenceID),
    CONSTRAINT  LocationPreferences_FK2 FOREIGN KEY (LocationID)    REFERENCES  Locations(LocationID)
);

CREATE TABLE Houses
(
    HouseID     NUMERIC(5)  PRIMARY KEY NOT NULL,
    LocationID  NUMERIC(5),
    CONSTRAINT  Houses_FK1  FOREIGN KEY (LocationID)    REFERENCES  Locations(LocationID)
);

CREATE TABLE Theatres
(
    TheatreID   NUMERIC(5)  PRIMARY KEY NOT NULL,
    LocationID  NUMERIC(5),
    TheatreName VARCHAR(20),
    CONSTRAINT  Theatres_FK1    FOREIGN KEY (LocationID)    REFERENCES  Locations(LocationID)
);

CREATE TABLE Users
(
    UserID  NUMERIC(5)  PRIMARY KEY NOT NULL,
    Name    VARCHAR(20),
    Age     NUMERIC(3),
    HouseID NUMERIC(5),
    CONSTRAINT  Users_FK1    FOREIGN KEY (HouseID)    REFERENCES  Houses(HouseID)
);

CREATE TABLE TheatreMovies
(
    TheatreID   NUMERIC(5),
    MovieID     NUMERIC(5),
    CONSTRAINT  TheatreMovies_FK1   FOREIGN KEY (TheatreID) REFERENCES  Theatres(TheatreID),
    CONSTRAINT  TheatreMovies_FK2   FOREIGN KEY (MovieID)   REFERENCES  Movies(MovieID)
);

CREATE TABLE UserDevices
(
    UserID      NUMERIC(5),
    DeviceID    NUMERIC(5),
    CONSTRAINT  UserDevices_FK1 FOREIGN KEY (UserID)    REFERENCES  Users(UserID),
    CONSTRAINT  UserDevices_FK2 FOREIGN KEY (DeviceID)  REFERENCES  Devices(DeviceID)
);

CREATE TABLE UserPreferences
(
    UserID          NUMERIC(5),
    PreferenceID    NUMERIC(5),
    P_Rank          NUMERIC(3),
    CONSTRAINT  UserPreferences_FK1 FOREIGN KEY (UserID)        REFERENCES  Users(UserID),
    CONSTRAINT  UserPreferences_FK2 FOREIGN KEY (PreferenceID)  REFERENCES  Preferences(PreferenceID)
);
