load data infile "Calendar2022.csv"
into table drivers
columns terminated by "," 
lines terminated by "\n"
ignore 1 lines;
