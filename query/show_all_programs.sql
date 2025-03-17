SELECT p.id, p.name, lm.description as "learning_method"
FROM program p
INNER JOIN learning_method lm on lm.id = p.learning_method_id