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
