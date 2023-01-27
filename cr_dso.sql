drop foreign table dso_f;
Create foreign table dso_f(
ra float,
dec float,
type varchar(10),
const varchar(10),
mag float,
name varchar(50),
rarad float,
decrad float,
id int,
r1 float,
r2 float,
angle float,
dso_source int,
id1 varchar(10),
cat1 varchar(10),
id2 varchar(10),
cat2 varchar(10),
dupid varchar(10),
dupcat varchar(10),
display_mag float
) Server srv options (filename 'dso.csv',format 'csv');
