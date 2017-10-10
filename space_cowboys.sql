DROP TABLE IF EXISTS space_cowboys;

CREATE TABLE space_cowboys (
id SERIAL8 PRIMARY KEY,
name VARCHAR(255),
bounty_value VARCHAR(255),
last_known_location VARCHAR(255),
favourite_weapon VARCHAR(255)
);
