CREATE DATABASE traffic_violation_system;

USE traffic_violation_system;

CREATE TABLE VehicleOwner(
    owner_id INT PRIMARY KEY AUTO_INCREMENT,
    owner_name VARCHAR(100) NOT NULL,
    address VARCHAR(200),
    mobile_number VARCHAR(15) UNIQUE NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    driving_license_number VARCHAR(30) UNIQUE NOT NULL
);

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

CREATE TABLE TrafficViolation(
    violation_id INT PRIMARY KEY AUTO_INCREMENT,
    violation_rule VARCHAR(100) NOT NULL,
    fine_amount INT NOT NULL CHECK (fine_amount >=0),
    violation_details VARCHAR(255)
);

CREATE TABLE ViolationEntry(
    entry_id INT PRIMARY KEY AUTO_INCREMENT,
    violation_datetime DATETIME,
    vehicle_id INT NOT NULL,
    violation_id INT NOT NULL,

    FOREIGN KEY(vehicle_id)
    REFERENCES Vehicle(vehicle_id),

    FOREIGN KEY(violation_id)
    REFERENCES TrafficViolation(violation_id)
);

INSERT INTO VehicleOwner
VALUES
('Rahul Sharma','Hyderabad','9876543210','rahul@gmail.com','DL001'),

('Saifullah Khan','Delhi','9876543211','saif@gmail.com','DL002'),

('John Anthony','Mumbai','9878375210','john02@gmail.com','DL003'),

('Sabrina','Hyderabad','9876593850','rina934@gmail.com','DL004');

INSERT INTO Vehicle
VALUES
('TS09AB1234','Activa','2022','2022-06-15',1),

('DL01XY5678','Swift','2021','2021-08-20',2),

('MH12CD4321','Pulsar','2023','2023-02-10',3),

('TS08XY9876','Creta','2024','2024-01-15',4);

INSERT INTO TrafficViolation
VALUES
('No Helmet',500,'Rider not wearing helmet'),

('Signal Jump',1000,'Crossed red signal'),

('Over Speeding',1500,'Exceeded speed limit');

INSERT INTO ViolationEntry
VALUES
('2026-06-05 10:30:00',101,1),

('2026-06-05 14:45:00',102,2),

('2026-06-06 09:10:00',102,3),

('2026-06-06 16:30:00',102,1);