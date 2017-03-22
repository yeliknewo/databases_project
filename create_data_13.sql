CALL add_user("123 Kappa St", "Boston", "MA", "12345", "Kiley Owen", "20");
CALL add_food("Pizza", "Pizza");
INSERT INTO UserPreferences(UserID, PreferenceID, P_Rank) VALUES ((SELECT u.UserID FROM Users u WHERE u.Name like "%Owen%" LIMIT 1), (SELECT p.PreferenceID FROM Preferences p, Foods f WHERE p.PreferenceID = f.PreferenceID AND f.FoodType like "Pizza" LIMIT 1), 1);
