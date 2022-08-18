Select round(long_W,4) 
From station
Where lat_n in (
    Select max(lat_n)
    From station
    Where lat_n < 137.2345
);
