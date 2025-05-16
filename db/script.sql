CREATE TABLE Users (
    id_user VARCHAR(8) PRIMARY KEY,
    name VARCHAR(20) NOT NULL,
    surname VARCHAR(50) NOT NULL,
    phone INT NOT NULL,
    email VARCHAR(30) NOT NULL
);

CREATE TABLE Restaurants (
    id_restaurants VARCHAR(8) PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    address VARCHAR(100) NOT NULL,
    type VARCHAR(30) NOT NULL
);

CREATE TABLE Bookings (
    id_booking VARCHAR(8) PRIMARY KEY,
    date DATE NOT NULL,
    hour TIME NOT NULL,
    n_people INT NOT NULL,
    id_user VARCHAR(8) NOT NULL,
    id_restaurant VARCHAR(8) NOT NULL,
    FOREIGN KEY (id_user) REFERENCES Users(id_user),
    FOREIGN KEY (id_restaurant) REFERENCES Restaurants(id_restaurants)
);
