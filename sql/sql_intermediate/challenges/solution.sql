with challenges_result as (
    Select h.hacker_id, h.name, count(*) challenged_created
    From hackers h
    inner join challenges c
    on h.hacker_id = c.hacker_id
    Group by h.hacker_id, h.name
) 
Select hacker_id, name, challenged_created
From (
    Select 
    hacker_id, name, challenged_created,
    max(challenged_created) over(order by 1) mx_challenged_created,
    count(challenged_created) over (partition by challenged_created order by 1) cnt_challenged_created
    From challenges_result
) where (mx_challenged_created = challenged_created)
or (mx_challenged_created != challenged_created and cnt_challenged_created = 1)
Order by challenged_created desc, hacker_id;
