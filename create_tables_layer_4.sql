CREATE TABLE UserDevices
(
    UserID      NUMERIC(5),
    DeviceID    NUMERIC(5),
    CONSTRAINT  UserDevices_FK1 FOREIGN KEY (UserID)    REFERENCES  Users(UserID),
    CONSTRAINT  UserDevices_FK2 FOREIGN KEY (DeviceID)  REFERENCES  Devices(DeviceID)
);

CREATE TABLE UserPreferences
(
    UserID          NUMERIC(5),
    PreferenceID    NUMERIC(5),
    P_Rank          NUMERIC(3),
    CONSTRAINT  UserPreferences_FK1 FOREIGN KEY (UserID)        REFERENCES  Users(UserID),
    CONSTRAINT  UserPreferences_FK2 FOREIGN KEY (PreferenceID)  REFERENCES  Preferences(PreferenceID)
);
