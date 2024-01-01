-- CREATE SCHEMA 
CREATE SCHEMA tuya;

-- TABLE FOR TUYA ENERGY CONSUMPTION RECORDS

CREATE TABLE tuya.energy_consumption (
	device_id text PRIMARY KEY,
	name text NOT NULL REFERENCES pterodactyl.locations(short),
	power numeric(6, 1) NOT NULL,
	timestamp timestamptz NOT NULL
);
