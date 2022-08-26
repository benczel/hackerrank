Select contests.contest_id, contests.hacker_id, contests.name,
    sum(nvl(sum_total_submissions,0)),
    sum(nvl(sum_total_accepted_submissions,0)),
    sum(nvl(sum_total_views,0)),
    sum(nvl(sum_total_unique_views,0))
From contests
left outer join colleges
on contests.contest_id = colleges.contest_id
left outer join challenges
on colleges.college_id = challenges.college_id
left outer join  (
    Select challenge_id,
    sum(total_submissions) sum_total_submissions,
    sum(total_accepted_submissions) sum_total_accepted_submissions
    from submission_stats
    Group by challenge_id
) sub
on challenges.challenge_id = sub.challenge_id
left outer join (
    Select challenge_id,
    sum(total_views) sum_total_views,
    sum(total_unique_views) sum_total_unique_views
    from view_stats
    group by challenge_id
) v_Stats
on challenges.challenge_id = v_Stats.challenge_id
group by contests.contest_id, contests.hacker_id, contests.name
having (
    sum(nvl(sum_total_submissions,0)) +
    sum(nvl(sum_total_accepted_submissions,0)) +
    sum(nvl(sum_total_views,0)) +
    sum(nvl(sum_total_unique_views,0))
) > 0
order by contests.contest_id;

:
