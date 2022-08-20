Select 
    max(case when occupation = 'Doctor' then name else null end) Doctor,
    max(case when occupation = 'Professor' then name else null end) Professor,
    max(case when occupation = 'Singer' then name else null end) Singer,
    max(case when occupation = 'Actor' then name else null end) Actor
From (   
    Select t.*, row_number() over (partition by occupation order by name) rn
    From occupations t
)
Group by rn
Order by 1,2,3,4;
