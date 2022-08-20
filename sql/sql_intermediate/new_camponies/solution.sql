Select c.company_code, c.founder, 
count(distinct lm.lead_manager_code),
count(distinct sm.senior_manager_code),
count(distinct m.manager_code),
count(distinct e.employee_code)
From company c
join lead_manager lm
on c.company_code = lm.company_code
join senior_manager sm
on lm.company_code = sm.company_code
and lm.lead_manager_code = sm.lead_manager_code
join manager m
on sm.company_code = m.company_code
and sm.lead_manager_code = m.lead_manager_code
and sm.senior_manager_code = m.senior_manager_code
join employee e
on m.company_code = e.company_code
and m.lead_manager_code = e.lead_manager_code
and m.senior_manager_code = e.senior_manager_code
and m.manager_code = e.manager_code
Group by c.company_code, c.founder
order by c.company_code;
