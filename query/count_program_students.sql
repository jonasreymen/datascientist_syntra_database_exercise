SELECT p.name ,COUNT(p.id) AS "total_students"
FROM class_student cs 
INNER JOIN class c ON c.id = cs.class_id
INNER JOIN program_period pp ON pp.id = c.program_period_id
INNER JOIN program_year py ON py.id = pp.program_year_id
INNER JOIN program p ON p.id  = py.program_id
GROUP BY p.id