with number_list as (
    select level num
    from dual
    connect by level <= 1000
)
select listagg(num, '&') within group ( order by num)
from (
    select n1.num,  count(*) cnt
    from number_list n1
    inner join number_list n2
    on mod(n1.num, n2.num) = 0 and n1.num >= n2.num
    group by n1.num
) where cnt = 2;
