Select city, length_city
From (
    Select city, length_city,
        rank() over (partition by min_length_city order by city) rank_min,
        rank() over (partition by max_length_city order by city) rank_max
    From (
        Select city, length(city) length_city, 
            min(length(city)) over() min_length_city,
            max(length(city)) over() max_length_city
        From station
    ) where length_city = min_length_city or length_city = max_length_city
) where rank_min = 1 or rank_max = 1;

#I do not know why but the rank does the same id for both column.
