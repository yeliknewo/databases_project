CALL add_theatre("123 Kappa St", "Boston", "MA", "12345", "Star Theatre");
CALL add_movie("Space Wars", "Sci-Fi", "Dank Helmat must use The Spirit to defeat the rebels and save the galactaverse.");
INSERT INTO TheatreMovies(TheatreID, MovieID) VALUES ((SELECT t.TheatreID FROM Theatres t WHERE t.TheatreName like "Star Theatre" LIMIT 1), (SELECT m.MovieID FROM Movies m WHERE m.Description like "%Dank%" LIMIT 1));
