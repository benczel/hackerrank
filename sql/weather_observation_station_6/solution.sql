Select distinct city
From station
Where lower(substr(city,0,1)) in  ('a', 'e','i', 'o', 'u');
