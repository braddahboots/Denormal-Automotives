-- ## Modeling a Normalized Schema

-- whiteboard solution & generate diagram

-- 5 create query to generate tables needed to normalize Schema
---------------create make table-----------------
CREATE TABLE IF NOT EXISTS make_car (
  id SERIAL PRIMARY KEY NOT NULL,
  code varchar(100) NOT NULL,
  title varchar(100) NOT NULL
);
---------------create model table----------------

CREATE TABLE IF NOT EXISTS model_car (
  id SERIAL PRIMARY KEY NOT NULL,
  code varchar(100) NOT NULL,
  title varchar(100) NOT NULL
);

-------------create normalized table-------------
CREATE TABLE IF NOT EXISTS dealership (
  id SERIAL PRIMARY KEY NOT NULL,
  make_car_id INTEGER REFERENCES make_car(id) NOT NULL,
  model_car_id INTEGER REFERENCES model_car(id) NOT NULL,
  year INTEGER NOT NUll
);
