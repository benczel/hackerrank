Select round(sqrt(power(b - a, 2) + power(d - c, 2)),4)
From (
    Select min(lat_n) a, max(lat_n) b,
    min(long_w) c, max(long_w) d
    From station
);
