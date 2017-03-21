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
    MovieID         INT  AUTO_INCREMENT PRIMARY KEY NOT NULL,
    MovieName       VARCHAR(20),
    Genre           VARCHAR(20),
    Description     VARCHAR(50)
);

CREATE TABLE Foods
(
    FoodID          INT  AUTO_INCREMENT PRIMARY KEY NOT NULL,
    FoodName        VARCHAR(20),
    FoodType        VARCHAR(20)
);

CREATE TABLE Restaurants
(
    RestaurantID    INT  AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Cuisine         VARCHAR(20)
);

CREATE TABLE Locations
(
    LocationID      INT  AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Address         VARCHAR(20),
    City            VARCHAR(20),
    State           VARCHAR(2),
    ZipCode         VARCHAR(5)
);
