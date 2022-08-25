Select s.name
From Students s
join packages p1
using (id)
join friends f
using (id)
join packages p2
on f.friend_id = p2.id
where p1.salary < p2.salary
order by p2.salary;
