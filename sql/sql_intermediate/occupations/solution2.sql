Select doctor, professor, singer, actor
From (   
    Select t.*, row_number() over (partition by occupation order by name) rn
    From occupations t
)
pivot (
    max(name)
    for(occupation) in ('Doctor' as doctor, 
                        'Professor' as professor, 
                        'Singer' as singer,
                        'Actor' as actor)
) order by 1,2,3,4;
