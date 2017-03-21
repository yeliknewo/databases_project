CREATE TABLE UserDevices
(
    UserID      INT,
    DeviceID    INT,
    CONSTRAINT  UserDevices_FK1 FOREIGN KEY (UserID)    REFERENCES  Users(UserID),
    CONSTRAINT  UserDevices_FK2 FOREIGN KEY (DeviceID)  REFERENCES  Devices(DeviceID)
);

CREATE TABLE UserPreferences
(
    UserID          INT,
    PreferenceID    INT,
    P_Rank          INT,
    CONSTRAINT  UserPreferences_FK1 FOREIGN KEY (UserID)        REFERENCES  Users(UserID),
    CONSTRAINT  UserPreferences_FK2 FOREIGN KEY (PreferenceID)  REFERENCES  Preferences(PreferenceID)
);
