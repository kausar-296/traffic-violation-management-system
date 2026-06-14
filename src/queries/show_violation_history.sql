CREATE VIEW ViolationHistory AS
SELECT v.number_plate, t.violation_rule, ve.violation_datetime
FROM ViolationEntry ve, Vehicle v, TrafficViolation t
WHERE ve.vehicle_id = v.vehicle_id
AND ve.violation_id = t.violation_id;

SELECT * FROM ViolationHistory;