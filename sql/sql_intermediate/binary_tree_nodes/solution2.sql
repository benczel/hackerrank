Select n,
    case when leaf = 1 then 'Leaf'
            when leaf = 0 and isRoot=1 then 'Inner'
            else 'Root'
        end
From (
    Select bst.*, connect_by_isleaf leaf,
    case when p is null then 0 else 1 end  isRoot
    From bst
    start with p is null
    connect by prior bst.n = bst.p
) order by 1;
