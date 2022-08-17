Select distinct city
From station
where lower(substr(city,0,1)) not in ('a', 'e', 'i', 'o', 'u')
or lower(substr(city,-1)) not in ('a', 'e', 'i', 'o', 'u');
