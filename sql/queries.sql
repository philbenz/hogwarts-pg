--pulls the house heads for each house in hogwarts
select h.house_name, c.first_name, c.last_name from houses_heads hh join houses h on hh.house_id = h.id join teachers t on hh.teacher_id = t.id join contacts c on t.contact_id = c.id;

--pulls all teachers and their departments
select c.first_name, c.last_name, c.office_owl, d.department_name, d.subject from teachers t join contacts c on t.contact_id = c.id join departments d on d.id = t.department_id;

-- select all departments which don't have a teachers


-- select all students
select * from students s join contacts c on s.contact_id = c.id;

-- classes without teachers



-- students without classes



-- schedules with less than 2 classes
select * from schedules group by student_id;



-- parents and their students
select * from parents p join contacts c on p.contact_id = c.id join students s on p.student_id = s.id;
