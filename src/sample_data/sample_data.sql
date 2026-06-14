INSERT INTO VehicleOwner
(owner_name, address, mobile_number, email, driving_license_number)
VALUES
('Rahul Sharma','Hyderabad','9876543210','rahul@gmail.com','DL001'),
('Saifullah Khan','Delhi','9876543211','saif@gmail.com','DL002'),
('John Anthony','Mumbai','9878375210','john02@gmail.com','DL003'),
('Sabrina','Hyderabad','9876593850','rina934@gmail.com','DL004');

INSERT INTO Vehicle
(number_plate, vehicle_name, vehicle_model, registration_date, owner_id)
VALUES
('TS09AB1234','Activa','2022','2022-06-15',1),
('DL01XY5678','Swift','2021','2021-08-20',2),
('MH12CD4321','Pulsar','2023','2023-02-10',3),
('TS08XY9876','Creta','2024','2024-01-15',4);

INSERT INTO TrafficViolation
(violation_rule, fine_amount, violation_details)
VALUES
('No Helmet',500,'Rider not wearing helmet'),
('Signal Jump',1000,'Crossed red signal'),
('Over Speeding',1500,'Exceeded speed limit');

INSERT INTO ViolationEntry
(violation_datetime, vehicle_id, violation_id)
VALUES
('2026-06-05 10:30:00',1,1),
('2026-06-05 14:45:00',2,2),
('2026-06-06 09:10:00',2,3),
('2026-06-06 16:30:00',2,1);