Select s.name
From city s
Inner join country c
On s.countrycode = c.code
Where c.continent = 'Africa';
