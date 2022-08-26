with data(r) as (
    select 1 r from dual
    union all 
    select r+1 from data where r < 20
)select lpad('* ',r, ' *') from data
order by r desc;
