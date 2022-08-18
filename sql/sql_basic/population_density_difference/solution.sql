Select abs(min_population-max_population)
From (
    Select min(population) min_population, max(population) max_population
    From city
);
