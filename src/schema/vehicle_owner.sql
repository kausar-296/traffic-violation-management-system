CREATE TABLE VehicleOwner(
    owner_id INT PRIMARY KEY AUTO_INCREMENT,
    owner_name VARCHAR(100) NOT NULL,
    address VARCHAR(200),
    mobile_number VARCHAR(15) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    driving_license_number VARCHAR(30) UNIQUE NOT NULL
);