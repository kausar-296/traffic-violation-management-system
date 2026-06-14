CREATE TABLE TrafficViolation(
    violation_id INT PRIMARY KEY AUTO_INCREMENT,
    violation_rule VARCHAR(100) NOT NULL,
    fine_amount INT NOT NULL CHECK (fine_amount >=0),
    violation_details VARCHAR(255)
);