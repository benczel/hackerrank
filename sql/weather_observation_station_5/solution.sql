Select city, length_city
From (
    Select city, length_city, rank() over(order by city) rank_city 
    From (
        Select city, length(city) length_city
        From station where length(city) = (Select min(length(city)) From Station)
        )
    ) where rank_city = 1
union all
Select city, length_city
From (
    Select city, length_city, rank() over(order by city) rank_city 
    From (
        Select city, length(city) length_city
        From station where length(city) = (Select max(length(city)) From Station)
        )
    ) where rank_city = 1;
