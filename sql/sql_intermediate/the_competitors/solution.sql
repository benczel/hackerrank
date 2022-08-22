Select hacker_id, name
From (
    Select h.hacker_id, h.name, count(*) cnt
    From submissions s
    inner join challenges c
    on s.challenge_id = c.challenge_id
    inner join difficulty d
    on c.difficulty_level = d.difficulty_level
    inner join hackers h
    on h.hacker_id = s.hacker_id
    where s.score = d.score
    group by h.hacker_id, h.name
) where cnt > 1
order by cnt desc, hacker_id;
