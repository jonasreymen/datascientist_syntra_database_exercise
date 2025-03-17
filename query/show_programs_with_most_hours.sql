SELECT p.name, SUM(ps.sessions) AS "sessions"
FROM program p
INNER JOIN program_year py ON py.program_id = p.id
INNER JOIN program_year_subject ps ON ps.program_year_id = py.id
GROUP BY p.id
ORDER BY SUM(ps.sessions) DESC
LIMIT 4