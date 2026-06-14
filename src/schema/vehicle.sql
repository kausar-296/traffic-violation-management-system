CREATE TABLE Vehicle(
    vehicle_id INT PRIMARY KEY AUTO_INCREMENT,
    number_plate VARCHAR(20) UNIQUE NOT NULL,
    vehicle_name VARCHAR(50),
    vehicle_model VARCHAR(50),
    registration_date DATE,
    owner_id INT NOT NULL,

    FOREIGN KEY(owner_id)
    REFERENCES VehicleOwner(owner_id)
);