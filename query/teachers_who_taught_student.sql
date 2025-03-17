SELECT t.id, t.firstname, t.lastname, t.email
FROM teacher t
WHERE EXISTS(
	SELECT 1
	FROM program_period_schedule pps
	INNER JOIN class c ON c.id = pps.class_id
	INNER JOIN class_student cs ON cs.class_id = c.id
	INNER JOIN student s ON s.id = cs.student_id
	WHERE pps.teacher_id = t.id
	AND s.firstname = "Alice" AND s.lastname = "Dupont"
)
