Select w.id, w_min.age, coins, w_min.power
From (
    Select age, power, min(coins_needed) coins
    From wands w
    inner join wands_property wp
    on w.code = wp.code
    Where is_evil = 0
    Group By age, power
) w_min
left outer join wands_property wp 
on wp.age = w_min.age
left outer join wands w
on wp.code = w.code and w_min.coins = w.coins_needed
order by w_min.power desc, w_min.age desc;
