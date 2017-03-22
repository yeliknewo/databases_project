CALL add_restaurant("123 Kappa St", "Boston", "MA", "12345", "Italian");
CALL add_food("Pizza", "Pizza");
INSERT INTO RestaurantFoods(RestaurantID, FoodID) VALUES ((SELECT r.RestaurantID FROM Restaurants r WHERE r.Cuisine like "Italian" LIMIT 1), (SELECT f.FoodID FROM Foods f WHERE f.FoodType like "Pizza" LIMIT 1));
