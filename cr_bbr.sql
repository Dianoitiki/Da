Drop foreign table bbr_f;
Create foreign table bbr_f(
temperature int,
CMF varchar(5),
x float,
y float,
power float,
R float,
G float,
B float,
_r int,
_g int,
_b int,
rgb varchar(7)
)  Server srv Options (filename 'bbr_color.csv',format 'csv');
