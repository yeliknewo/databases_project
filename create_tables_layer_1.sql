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
