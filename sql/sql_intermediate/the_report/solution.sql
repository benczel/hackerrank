Select 
case when grades.grade < 8 then
    null
else
    students.name
end name,
grades.grade, students.marks
From grades
join students
On grades.min_mark <= students.marks
and grades.max_mark >= students.marks
order by grades.grade desc, students.name;
