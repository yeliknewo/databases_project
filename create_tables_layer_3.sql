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
