Select start_Date, min(end_date) 
From (    
    Select start_date
    From projects
    where start_date not in (
        Select end_date from projects
    ) 
)a
join (
    select end_date
    from projects
    where end_date not in (
        select start_date from projects
    )
)b 
on start_Date < end_date
Group by start_Date
order by min(end_date)- start_Date, start_Date;
