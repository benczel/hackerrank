Select name
From students
Where marks > 75
order by upper(substr(name,-3)), id asc;
