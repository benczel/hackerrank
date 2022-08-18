Select max(earn), count(*) 
From (
    Select e.*, salary * months earn, max(salary * months) over(partition by 1) max_earn
    From employee e
) where earn = max_earn;
