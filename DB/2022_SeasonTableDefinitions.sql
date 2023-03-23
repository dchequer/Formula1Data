USE formulaone;

create table if not exists Drivers(
	roundID tinyint unsigned,
    race_date date,
    grand_prix_name varchar(100),
    country varchar(50),
    city varchar(50),
    circuit_name varchar(100),
    first_gp smallint unsigned,
    number_laps tinyint unsigned,
    circuit_length_km decimal(4, 3),
    race_distance_km decimal(8, 3),
    lap_record time,
    record_owner varchar(50),
    record_year smallint unsigned,
    turns tinyint unsigned,
    drs_zones tinyint unsigned
)

