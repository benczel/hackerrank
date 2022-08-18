Select max(salary * months), count(*)
From employee
Where salary * months = (
    Select max(salary * months) From employee
);
