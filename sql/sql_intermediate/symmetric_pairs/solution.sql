Select f1.x, f1.y
From functions f1
join functions f2
on  (f1.x = f2.y and f2.x = f1.y)
Where f1.x <= f1.y
Group by f1.x, f1.y
Having count(*) > 1 or f1.x != f1.y
Order by f1.x;
