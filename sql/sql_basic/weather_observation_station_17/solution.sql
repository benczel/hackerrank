Select round(long_w,4)
From station
Where lat_n = (
    Select min(lat_n)
    From station
    Where lat_n > 38.7780
);
