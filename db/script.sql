CREATE TABLE Users (
    id_user INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    surname VARCHAR(50) NOT NULL,
    phone INT NOT NULL,
    email VARCHAR(30) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE Restaurants (
    id_restaurant INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    address VARCHAR(100) NOT NULL,
    type VARCHAR(30) NOT NULL
) ENGINE=InnoDB;

CREATE TABLE Bookings (
    id_booking INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    date DATE NOT NULL,
    hour TIME NOT NULL,
    n_people INT NOT NULL,
    id_user INT UNSIGNED NOT NULL,
    id_restaurant INT UNSIGNED NOT NULL,
    FOREIGN KEY (id_user) REFERENCES Users(id_user),
    FOREIGN KEY (id_restaurant) REFERENCES Restaurants(id_restaurant)
) ENGINE=InnoDB;

INSERT INTO Users (name, surname, phone, email) VALUES ('Andrea', 'Fernández', 612345678, 'andrea@email.com');
INSERT INTO Users (name, surname, phone, email) VALUES ('Luis', 'Martínez', 622112233, 'luis.mtz@email.com');
INSERT INTO Users (name, surname, phone, email) VALUES ('María', 'López', 634567890, 'maria.lopez@email.com');
INSERT INTO Users (name, surname, phone, email) VALUES ('Jorge', 'Sanz', 698745612, 'jorge.sanz@email.com');
INSERT INTO Users (name, surname, phone, email) VALUES ('Lucía', 'Pérez', 611223344, 'lucia.pz@email.com');
INSERT INTO Users (name, surname, phone, email) VALUES ('Carlos', 'García', 655443322, 'carlos.gc@email.com');

INSERT INTO Restaurants (name, address, type) VALUES ('El Buen Sabor', 'Calle Mayor 12', 'Tradicional');
INSERT INTO Restaurants (name, address, type) VALUES ('PizzaTop', 'Avenida Italia 45', 'Italiana');
INSERT INTO Restaurants (name, address, type) VALUES ('SushiZen', 'Paseo Independencia 99', 'Japonesa');
INSERT INTO Restaurants (name, address, type) VALUES ('La Parrilla', 'Calle Fuego 6', 'Barbacoa');
INSERT INTO Restaurants (name, address, type) VALUES ('VeggieLife', 'Calle Verde 33', 'Vegana');
INSERT INTO Restaurants (name, address, type) VALUES ('Tapas & Más', 'Plaza del Pilar 10', 'Tapas');

INSERT INTO Bookings (date, hour, n_people, id_user, id_restaurant) VALUES ('2025-05-18', '14:30:00', 4, 1, 1);
INSERT INTO Bookings (date, hour, n_people, id_user, id_restaurant) VALUES ('2025-05-18', '21:00:00', 2, 2, 3);
INSERT INTO Bookings (date, hour, n_people, id_user, id_restaurant) VALUES ('2025-05-19', '13:00:00', 6, 3, 2);
INSERT INTO Bookings (date, hour, n_people, id_user, id_restaurant) VALUES ('2025-05-20', '20:30:00', 3, 4, 6);
INSERT INTO Bookings (date, hour, n_people, id_user, id_restaurant) VALUES ('2025-05-21', '15:00:00', 5, 5, 4);
INSERT INTO Bookings (date, hour, n_people, id_user, id_restaurant) VALUES ('2025-05-22', '19:00:00', 1, 6, 5);
