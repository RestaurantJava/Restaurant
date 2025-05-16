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

INSERT INTO Users (name, surname, phone, email) VALUES
    ('Laura', 'García', 600123456, 'laura.garcia@example.com'),
    ('David', 'Martínez', 611987654, 'david.martinez@example.com'),
    ('Andrea', 'Fernández', 622456789, 'andrea.fernandez@example.com');
INSERT INTO Restaurants (name, address, type) VALUES
    ('La Tagliatella', 'Calle Mayor 12, Zaragoza', 'Italiana'),
    ('El Fogón de Aragón', 'Avenida Madrid 34, Zaragoza', 'Tradicional'),
    ('Sushi Ya!', 'Calle Japón 8, Zaragoza', 'Japonesa');
INSERT INTO Restaurants (name, address, type) VALUES
    ('La Tagliatella', 'Calle Mayor 12, Zaragoza', 'Italiana'),
    ('El Fogón de Aragón', 'Avenida Madrid 34, Zaragoza', 'Tradicional'),
    ('Sushi Ya!', 'Calle Japón 8, Zaragoza', 'Japonesa');