SELECT COUNT(*) as "total"
FROM program_year_subject ps
INNER JOIN `subject` s ON s.id = ps.subject_id 
INNER JOIN program_year py On py.id = ps.program_year_id
INNER JOIN program_period pp ON pp.program_year_id = py.id
INNER JOIN class c ON c.program_period_id = pp.id
INNER JOIN class_student cs ON cs.class_id = c.id
WHERE s.name = "Databanken";