select * 
From (
    Select name || '(' || substr(occupation,0,1) || ')'
    From occupations
    Order by name
)
union all
Select 'There are a total of ' || cnt || ' ' ||  lower(occupation) || 's.'
From (
    select occupation,  count(occupation) cnt
    From occupations
    group by occupation
    order by 2, substr(occupation,0,1)
) ;
