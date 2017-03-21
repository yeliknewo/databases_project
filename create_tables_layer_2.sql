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
    CONSTRAINT  Foods_FK1 FOREIGN KEY (PreferenceID)  REFERENCES  Preferences(PreferenceID)
);

CREATE TABLE Locations
(
    PreferenceID    INT,
    LocationID      INT  AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Address         VARCHAR(20),
    City            VARCHAR(20),
    State           VARCHAR(2),
    ZipCode         VARCHAR(5),
    CONSTRAINT  Locations_FK1 FOREIGN KEY (PreferenceID)  REFERENCES  Preferences(PreferenceID)
);
