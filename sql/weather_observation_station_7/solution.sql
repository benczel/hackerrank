Select distinct city
From station
Where lower(substr(city,-1)) in ('a', 'e', 'i', 'o', 'u');
