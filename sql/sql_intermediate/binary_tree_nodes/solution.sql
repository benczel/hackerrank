Select b1.n,
case when b1.p is null then
    'Root'
    when not exists (select p from bst where b1.n = bst.p) then
    'Leaf'
    else 
    'Inner'
end
From bst b1
order by b1.n;
