Select min(start_date), max(end_date)
From (
    Select task_id, start_date, end_date, 
    sum(iden) over(order by end_date rows between unbounded preceding and current row) proj_no
    From (
      Select task_id, start_date, end_Date, prev,
                case when prev = start_date then 
                    0
                else
                    1
                end iden
            From (
                Select task_id, start_date, end_date,
                lag(end_date,1, start_date)over(order by end_Date) prev
                From projects p
            )
    )
) Group by proj_no
Order by max(end_date)- min(start_date), min(start_date);
