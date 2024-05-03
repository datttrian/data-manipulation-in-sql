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

CREATE TABLE team (
    id INT PRIMARY KEY,
    team_api_id INT,
    team_long_name VARCHAR(255),
    team_short_name VARCHAR(10)
);

\copy match FROM '/tmp/match.csv' DELIMITER ',' CSV HEADER;
\copy country FROM '/tmp/country.csv' DELIMITER ',' CSV HEADER;
\copy team FROM '/tmp/team.csv' DELIMITER ',' CSV HEADER;
