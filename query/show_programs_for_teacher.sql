SELECT p.id, p.name, p.description
FROM program p
WHERE EXISTS(
	SELECT 1
	FROM program_year py
	INNER JOIN program_period pp ON pp.program_year_id = py.id
	INNER JOIN class c ON c.program_period_id = pp.id
	INNER JOIN program_period_schedule pps ON pps.class_id = c.id
	INNER JOIN teacher t ON t.id = pps.teacher_id
	WHERE py.program_id = p.id AND t.`key` = "BJORN_LECIS"
)