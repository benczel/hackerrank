Select x,y
From functions f1
Where exists (select x,y from functions f2 where f1.x = f2.y and f2.x = f1.y) 
and f1.x < f1.y
union
Select x,y
From functions f1
Where (select count(*) from functions where f1.x = x and f1.y = y) > 1 and x = y
Order by x;
