-- datascientist.learning_method definition

CREATE TABLE `learning_method` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- datascientist.location definition

CREATE TABLE `location` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- datascientist.student definition

CREATE TABLE `student` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `birthday` date DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- datascientist.subject definition

CREATE TABLE `subject` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_subject_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- datascientist.teacher definition

CREATE TABLE `teacher` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `birthday` date DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `key` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- datascientist.program definition

CREATE TABLE `program` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text,
  `learning_method_id` int unsigned NOT NULL,
  `key` varchar(100) NOT NULL,
  `cost` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `program_learning_method_FK` (`learning_method_id`),
  CONSTRAINT `program_learning_method_FK` FOREIGN KEY (`learning_method_id`) REFERENCES `learning_method` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- datascientist.program_year definition

CREATE TABLE `program_year` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `program_id` int unsigned NOT NULL,
  `year` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `program_year_program_FK` (`program_id`),
  CONSTRAINT `program_year_program_FK` FOREIGN KEY (`program_id`) REFERENCES `program` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- datascientist.program_period definition

CREATE TABLE `program_period` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `registration_end_date` date NOT NULL,
  `program_year_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `program_period_program_year_FK` (`program_year_id`),
  CONSTRAINT `program_period_program_year_FK` FOREIGN KEY (`program_year_id`) REFERENCES `program_year` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- datascientist.program_year_subject definition

CREATE TABLE `program_year_subject` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `program_year_id` int unsigned NOT NULL,
  `subject_id` int unsigned NOT NULL,
  `sessions` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `program_subject_subject_FK` (`subject_id`),
  KEY `program_subject_program_year_FK` (`program_year_id`),
  CONSTRAINT `program_subject_program_year_FK` FOREIGN KEY (`program_year_id`) REFERENCES `program_year` (`id`),
  CONSTRAINT `program_subject_subject_FK` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- datascientist.registration definition

CREATE TABLE `registration` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `program_period_id` int unsigned NOT NULL,
  `student_id` int unsigned DEFAULT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `registration_student_FK` (`student_id`),
  KEY `registration_program_period_FK` (`program_period_id`),
  CONSTRAINT `registration_program_period_FK` FOREIGN KEY (`program_period_id`) REFERENCES `program_period` (`id`),
  CONSTRAINT `registration_student_FK` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- datascientist.class definition

CREATE TABLE `class` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `program_period_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `class_program_period_FK` (`program_period_id`),
  CONSTRAINT `class_program_period_FK` FOREIGN KEY (`program_period_id`) REFERENCES `program_period` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- datascientist.class_student definition

CREATE TABLE `class_student` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `class_id` int unsigned NOT NULL,
  `student_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `class_student_unique` (`class_id`,`student_id`),
  KEY `classes_students_students_FK` (`student_id`),
  CONSTRAINT `classes_students_classes_FK` FOREIGN KEY (`class_id`) REFERENCES `class` (`id`),
  CONSTRAINT `classes_students_students_FK` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- datascientist.program_period_schedule definition

CREATE TABLE `program_period_schedule` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `class_id` int unsigned NOT NULL,
  `teacher_id` int unsigned NOT NULL,
  `program_year_subject_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `program_schedule_class_FK` (`class_id`),
  KEY `program_schedule_teacher_FK` (`teacher_id`),
  KEY `program_schedule_program_subject_FK` (`program_year_subject_id`),
  CONSTRAINT `program_schedule_class_FK` FOREIGN KEY (`class_id`) REFERENCES `class` (`id`),
  CONSTRAINT `program_schedule_program_subject_FK` FOREIGN KEY (`program_year_subject_id`) REFERENCES `program_year_subject` (`id`),
  CONSTRAINT `program_schedule_teacher_FK` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


-- datascientist.program_period_schedule_timeslot definition

CREATE TABLE `program_period_schedule_timeslot` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `program_period_schedule_id` int unsigned NOT NULL,
  `begin_datetime` datetime NOT NULL,
  `end_datetime` datetime NOT NULL,
  `location_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `program_period_schedule_timeslot_program_period_schedule_FK` (`program_period_schedule_id`),
  KEY `program_period_schedule_timeslot_location_FK` (`location_id`),
  CONSTRAINT `program_period_schedule_timeslot_location_FK` FOREIGN KEY (`location_id`) REFERENCES `location` (`id`),
  CONSTRAINT `program_period_schedule_timeslot_program_period_schedule_FK` FOREIGN KEY (`program_period_schedule_id`) REFERENCES `program_period_schedule` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;