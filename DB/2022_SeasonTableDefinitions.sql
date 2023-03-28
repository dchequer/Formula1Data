USE formulaone;

create table if not exists Circuits(
	circuit_id int,
    grand_prix_name varchar(100),
    circuit_name varchar(100),
    country varchar(50),
    city varchar(50),
    first_grand_prix year,
    laps int,
    length double,
    race_distance double,
    lap_record time,
    record_owner varchar(50),
    record_year year,
    turns int, 
    drs_zones int,
    
    primary key (circuit_id)
);

create table if not exists Calendar(
	roundID tinyint unsigned,
    race_date date,
    grand_prix_name varchar(100),
    country varchar(50),
    city varchar(50),
    circuit_name varchar(100),
    
    primary key (roundID)
);

create table if not exists Drivers(
	driver_name varchar(50),
    dob date,
    driver_number int,
    podiums int,
    points decimal(5, 2),
    grand_prixs int,
    world_championships int,
    highest_finish varchar(50),
    highest_grid_position int,
    place_of_birth varchar(100),
    
    primary key (driver_name, driver_number)
);

create table if not exists DOTD(
	race_id int,
    circuit_id int,
    grand_prix_name varchar(100),
	circuit_name varchar(100),
    first_place_driver_id int,
    first_place_driver_name varchar(50),
    first_place_vote float,
    second_place_driver_id int,
    second_place_driver_name varchar(50),
    second_place_vote float,
    third_place_driver_id int,
    third_place_driver_name varchar(50),
    third_place_vote float,
	
    primary key (race_id),
    foreign key (circuit_id) references Circuits(circuit_id),
    foreign key (grand_prix_name) references Circuits(grand_prix_name),
    foreign key (circuit_name) references Circuits(circuit_name),
    foreign key (first_place_driver_id) references Drivers(driver_number),
    foreign key (first_place_driver_name) references Drivers(driver_name),
    foreign key (second_place_driver_id) references Drivers(driver_number),
    foreign key (second_place_driver_name) references Drivers(driver_name),
    foreign key (third_place_driver_id) references Drivers(driver_number),
    foreign key (third_place_driver_name) references Drivers(driver_name)
);

    
    
)