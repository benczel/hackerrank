Select sum(s.population)
From city s
Inner join country c
On s.countrycode = c.code
Where c.continent = 'Asia';


