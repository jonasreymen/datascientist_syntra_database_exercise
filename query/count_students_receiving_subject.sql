SELECT COUNT(cs.id) as "total"
FROM class_student cs
INNER JOIN class c ON c.id = cs.class_id
INNER JOIN program_period pp ON pp.id = c.program_period_id
INNER JOIN program_year py ON py.id = pp.program_year_id
INNER JOIN program_year_subject pys ON pys.program_year_id = py.id
INNER JOIN subject s On s.id  = pys.subject_id
WHERE s.name  = "Databanken";