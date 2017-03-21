CREATE TABLE MoviePreferences
(
    PreferenceID    INT,
    MovieID         INT,
    CONSTRAINT  MoviePreferences_FK1    FOREIGN KEY (PreferenceID)  REFERENCES  Preferences(PreferenceID),
    CONSTRAINT  MoviePreferences_FK2    FOREIGN KEY (MovieID)       REFERENCES  Movies(MovieID)
);

CREATE TABLE FoodPreferences
(
    PreferenceID    INT,
    FoodID          INT,
    CONSTRAINT  FoodPreferences_FK1 FOREIGN KEY (PreferenceID)  REFERENCES  Preferences(PreferenceID),
    CONSTRAINT  FoodPreferences_FK2 FOREIGN KEY (FoodID)        REFERENCES  Foods(FoodID)
);

CREATE TABLE RestaurantFoods
(
    RestaurantID    INT,
    FoodID          INT,
    CONSTRAINT  RestaurantFoods_FK1 FOREIGN KEY (RestaurantID)  REFERENCES  Restaurants(RestaurantID),
    CONSTRAINT  RestaurantFoods_FK2 FOREIGN KEY (FoodID)        REFERENCES  Foods(FoodID)
);

CREATE TABLE RestaurantLocations
(
    RestaurantID    INT,
    LocationID      INT,
    CONSTRAINT  RestaurantLocations_FK1 FOREIGN KEY (RestaurantID)  REFERENCES  Restaurants(RestaurantID),
    CONSTRAINT  RestaurantLocations_FK2 FOREIGN KEY (LocationID)    REFERENCES  Locations(LocationID)
);

CREATE TABLE LocationPreferences
(
    PreferenceID    INT,
    LocationID      INT,
    CONSTRAINT  LocationPreferences_FK1 FOREIGN KEY (PreferenceID)  REFERENCES  Preferences(PreferenceID),
    CONSTRAINT  LocationPreferences_FK2 FOREIGN KEY (LocationID)    REFERENCES  Locations(LocationID)
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
