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
