-- insert views
-- depends: 20250312_01_850EW-database-setup

CREATE OR REPLACE
ALGORITHM = UNDEFINED VIEW `vw_program_year_student` AS
select
    `s`.`firstname` AS `firstname`,
    `s`.`lastname` AS `lastname`,
    `p`.`name` AS `program`,
    `py`.`year` AS `year`
from
    (((((`student` `s`
join `class_student` `cs` on
    ((`cs`.`student_id` = `s`.`id`)))
join `class` `c` on
    ((`c`.`id` = `cs`.`class_id`)))
join `program_period` `pp` on
    ((`pp`.`id` = `c`.`program_period_id`)))
join `program_year` `py` on
    ((`py`.`id` = `pp`.`program_year_id`)))
join `program` `p` on
    ((`p`.`id` = `py`.`program_id`)));

CREATE OR REPLACE
ALGORITHM = UNDEFINED VIEW `vw_registration_open_program` AS
select
    `s`.`firstname` AS `firstname`,
    `s`.`lastname` AS `lastname`,
    `p`.`name` AS `name`,
    `py`.`year` AS `year`
from
    ((((`registration` `r`
join `program_period` `pp` on
    ((`pp`.`id` = `r`.`program_period_id`)))
join `program_year` `py` on
    ((`py`.`id` = `pp`.`program_year_id`)))
join `program` `p` on
    ((`p`.`id` = `py`.`program_id`)))
join `student` `s` on
    ((`s`.`id` = `r`.`student_id`)))
where
    (`pp`.`registration_end_date` <= now());

CREATE OR REPLACE
ALGORITHM = UNDEFINED VIEW `vw_active_students_in_program` AS
select
    `s`.`firstname` AS `firstname`,
    `s`.`lastname` AS `lastname`,
    `p`.`name` AS `program`,
    `py`.`year` AS `year`,
    `c`.`name` AS `class_name`
from
    (((((`student` `s`
join `class_student` `cs` on
    ((`cs`.`student_id` = `s`.`id`)))
join `class` `c` on
    ((`c`.`id` = `cs`.`class_id`)))
join `program_period` `pp` on
    ((`pp`.`id` = `c`.`program_period_id`)))
join `program_year` `py` on
    ((`py`.`id` = `pp`.`program_year_id`)))
join `program` `p` on
    ((`p`.`id` = `py`.`program_id`)))
where
    ((`pp`.`start_date` <= now())
        and (`pp`.`end_date` >= now()));