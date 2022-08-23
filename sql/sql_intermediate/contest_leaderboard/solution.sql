Select hacker_id, name, sum(mx_score) sm_score 
From (
    Select h.hacker_id, h.name, s.challenge_id, max(score) mx_score
    From hackers h
    inner join submissions s
    on h.hacker_id = s.hacker_id
    Group by h.hacker_id, h.name, s.challenge_id
) Group by hacker_id, name
Having  sum(mx_score) <> 0
Order by 3 desc, 1 asc;
