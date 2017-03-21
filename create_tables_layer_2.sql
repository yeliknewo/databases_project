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
