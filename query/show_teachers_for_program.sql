SELECT t.id, t.firstname, t.lastname, t.email
FROM teacher t
WHERE EXISTS(
	SELECT 1
	FROM program_period_schedule pps
	INNER JOIN program_year_subject ps ON ps.id = pps.program_year_subject_id
	INNER JOIN program_year py ON py.id = ps.program_year_id
	INNER JOIN program p ON p.id = py.program_id
	WHERE pps.teacher_id = t.id
	AND p.key = "DATA_SCIENTIST"
)