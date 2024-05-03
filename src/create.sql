DROP TABlE match, country;

CREATE TABLE match (
  name VARCHAR PRIMARY KEY,
  country_code VARCHAR,
  city_proper_pop REAL,
  metroarea_pop REAL,
  urbanarea_pop REAL
);

CREATE TABLE country (
    id INT PRIMARY KEY,
    name VARCHAR(255)
);

\copy match FROM '/tmp/match.csv' DELIMITER ',' CSV HEADER;
\copy country FROM '/tmp/country.csv' DELIMITER ',' CSV HEADER;
