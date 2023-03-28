use formulaone;

load data local infile "C:/Users/Diego/OneDrive/Documents/Programming/SQL/Formula1Data/Data/Old/2022/Calendar2022.csv"
into table Calendar
columns terminated by "," 
lines terminated by "\n"
ignore 1 lines;

show variables like "secure_file_priv";

set global local_infile = 1;