-- -- query old table and pull data into new table
-- INSERT INTO make_car (code, title)
-- SELECT DISTINCT make_code, make_title
-- FROM car_models;

-- -- query old table and pull data into new table
-- INSERT INTO model_car (code, title)
-- SELECT DISTINCT model_code, model_title
-- FROM car_models;

-- query old table and pull data into new table
INSERT INTO dealership (make_car_id, model_car_id, year)
SELECT make_car.id, model_car.id, car_models.year
FROM make_car, model_car, car_models
  WHERE make_car.code = car_models.make_code
    AND make_car.title = car_models.make_title
    AND model_car.code = car_models.model_code
    AND model_car.title = car_models.model_title;
  -- WHERE car_models.make_title = make_car.titleq
  --   AND car_models.make_code = make_car.code
  --   AND car_models.make_code = model_car.code
  --   AND car_models.make_title = model_car.title
