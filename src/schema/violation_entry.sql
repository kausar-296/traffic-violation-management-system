CREATE TABLE ViolationEntry(
    entry_id INT PRIMARY KEY AUTO_INCREMENT,
    violation_datetime DATETIME NOT NULL,
    vehicle_id INT NOT NULL,
    violation_id INT NOT NULL,

    FOREIGN KEY(vehicle_id)
    REFERENCES Vehicle(vehicle_id),

    FOREIGN KEY(violation_id)
    REFERENCES TrafficViolation(violation_id)
);