SELECT c.id, c.name, p.name, pp.start_date, pp.end_date
FROM class c 
INNER JOIN program_period pp ON pp.id = c.program_period_id
INNER JOIN program_year py ON py.id = pp.program_year_id
INNER JOIN program p ON p.id = py.program_id