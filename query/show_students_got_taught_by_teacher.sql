SELECT *
FROM student s 
WHERE EXISTS(
	SELECT 1
	FROM teacher t
	INNER JOIN program_period_schedule pps ON pps.teacher_id = t.id
	INNER JOIN class c ON c.id = pps.class_id
	INNER JOIN class_student cs ON cs.class_id = c.id
	WHERE s.id = cs.student_id
	AND t.`key` = "HANNAH_GOOSSENS"
)