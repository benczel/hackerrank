Select c.continent, trunc(avg(s.population))
From city s
Inner join country c
on s.countrycode = c.code
Group By c.continent;
