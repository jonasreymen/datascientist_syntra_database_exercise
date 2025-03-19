-- ingeschreven in meerder jaren worden hier ook in meegeteld
SELECT s.id, s.firstname, COUNT(DISTINCT py.program_id) AS "total"
FROM student s
INNER JOIN registration r ON r.student_id = s.id
INNER JOIN program_period pp ON pp.id = r.program_period_id
INNER JOIN program_year py ON py.id = pp.program_year_id
GROUP BY s.id
ORDER BY COUNT(DISTINCT py.program_id) DESC
LIMIT 5;

-- ingeschreven voor richting waarbij meerdere jaren niet meegeteld worden
SELECT s.id, s.firstname, COUNT(DISTINCT p.id) AS "total"
FROM student s
INNER JOIN registration r ON r.student_id = s.id
INNER JOIN program_period pp ON pp.id = r.program_period_id
INNER JOIN program_year py ON py.id = pp.program_year_id
INNER JOIN program p ON p.id = py.program_id
GROUP BY s.id
ORDER BY COUNT(DISTINCT p.id) DESC
LIMIT 5