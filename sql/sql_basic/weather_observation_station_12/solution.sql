Select distinct city
From station
Where lower(substr(city,0,1)) not in ('a', 'e', 'i', 'o', 'u')
and lower(substr(city,-1)) not in ('a', 'e', 'i', 'o', 'u');
