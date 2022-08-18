Select max(salary * months), count(*)
From employee
inner join (
    Select max(salary * months) max_salary From employee
) mx
on 1 = 1
Where salary * months = mx.max_salary;
