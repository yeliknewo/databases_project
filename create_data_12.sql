CALL add_user("123 Kappa St", "Boston", "MA", "12345", "Kiley Owen", "20");
INSERT INTO Devices (DeviceName, DeviceType, DeviceDescription) VALUES ("Battleship", "Desktop", "My sick ass desktop"), ("Potato", "Laptop", "My terrible laptop"), ("MyPhone", "Mobile", "My mobile phone");
INSERT INTO UserDevices(UserID, DeviceID) VALUES ((SELECT u.UserID FROM Users u WHERE u.Name like "%Kiley%" LIMIT 1), (SELECT d.DeviceID FROM Devices d WHERE d.DeviceName like "MyPhone" LIMIT 1));
