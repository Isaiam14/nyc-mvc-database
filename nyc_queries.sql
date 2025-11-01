USE nypd_collisions_vehicles;

-- 1) Vehicles by YEAR 
CREATE OR REPLACE VIEW v_vehicles_by_year AS
SELECT y.model_year,
       COUNT(*) AS num_vehicles
FROM vehicles v
JOIN model_years y ON v.year_id = y.year_id
GROUP BY y.model_year
ORDER BY y.model_year;

-- 2) Vehicles by TYPE
CREATE OR REPLACE VIEW v_vehicles_by_type AS
SELECT vt.vehicle_type_name,
       COUNT(*) AS num_vehicles
FROM vehicles v
JOIN vehicle_types vt ON v.vehicle_type_id = vt.vehicle_type_id
GROUP BY vt.vehicle_type_name
ORDER BY num_vehicles DESC;

-- 3) Vehicles by MAKE
CREATE OR REPLACE VIEW v_vehicles_by_make AS
SELECT m.make_name,
       COUNT(*) AS num_vehicles
FROM vehicles v
JOIN vehicle_makes m ON v.make_id = m.make_id
GROUP BY m.make_name
ORDER BY num_vehicles DESC;

-- 4) Collisions by STATE (distinct collisions)
CREATE OR REPLACE VIEW v_collisions_by_state AS
SELECT s.state_code,
       COUNT(DISTINCT v.collision_id) AS num_collisions
FROM vehicles v
JOIN states s ON v.state_id = s.state_id
GROUP BY s.state_code
ORDER BY num_collisions DESC;

-- 5) Collisions by CONTRIBUTING FACTOR (distinct collisions)
CREATE OR REPLACE VIEW v_collisions_by_factor AS
SELECT f.factor_desc,
       COUNT(DISTINCT v.collision_id) AS num_collisions
FROM vehicle_factors vf
JOIN factors f   ON vf.factor_id  = f.factor_id
JOIN vehicles v  ON vf.vehicle_id = v.vehicle_id
GROUP BY f.factor_desc
ORDER BY num_collisions DESC;

-- 6 to satisfy E
CREATE OR REPLACE VIEW v_makes_above_avg AS
SELECT vm.make_name, COUNT(v.vehicle_id) AS total_vehicles
FROM vehicles v
JOIN vehicle_makes vm ON v.make_id = vm.make_id
GROUP BY vm.make_name
HAVING COUNT(v.vehicle_id) >
   (SELECT AVG(vehicle_count) 
    FROM (
        SELECT COUNT(v2.vehicle_id) AS vehicle_count
        FROM vehicles v2
        GROUP BY v2.make_id
    ) t);

SELECT * FROM v_vehicles_by_year;
SELECT * FROM v_vehicles_by_type;
SELECT * FROM v_vehicles_by_make;
SELECT * FROM v_collisions_by_state;
SELECT * FROM v_collisions_by_factor;
SELECT * 
FROM v_makes_above_avg
ORDER BY total_vehicles DESC;



