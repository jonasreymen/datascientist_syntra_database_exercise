-- insert program_year_subjects
-- depends: 20250312_05_2fFyD-insert-subjects  20250313_02_AgYC6-insert-progam-year
INSERT INTO program_year_subject (id, program_year_id, subject_id, sessions) VALUES
-- Data Scientist (2 Years)
(1, 1, 1, 15),  -- Databanken
(2, 1, 2, 15),  -- Programmeren
(3, 1, 6, 3),  -- SQL
(4, 2, 3, 15),  -- Machine Learning
(5, 2, 7, 15),  -- Big Data
(6, 2, 17, 10), -- Data Warehousing
(7, 2, 18, 12), -- Deep Learning
(8, 2, 19, 10), -- Cloud Computing
(9, 2, 25, 10), -- Distributed Systems

-- Java Developer (2 Years)
(10, 5, 1, 15),  -- Databanken
(11, 5, 2, 15),  -- Programmeren
(12, 5, 6, 10),  -- SQL
(13, 6, 20, 15), -- Software Engineering
(14, 6, 21, 15), -- Web Development
(15, 6, 22, 12), -- API Design
(16, 6, 23, 10), -- Cybersecurity
(17, 6, 24, 10), -- DevOps

-- Leidinggeven (1 Year, 5 max_sessions split)
(18, 3, 4, 3),  -- Projectmanagement
(19, 3, 5, 2),   -- Soft Skills

-- Hoogwerker (1 Year, 2 max_sessions)
(20, 4, 8, 2),  -- Hoogwerker Veiligheid

-- Energiemanagement (1 Year, 4 max_sessions split)
(21, 7, 9, 1),  -- Energiebeheer
(22, 7, 14, 3), -- Duurzame Energie
(23, 7, 15, 2), -- Elektriciteit

-- Tapas & Fingerfood (1 Year, 3 max_sessions)
(24, 8, 10, 3),  -- Voedselbereiding

-- Limburgse Vlaaien (1 Year, 3 max_sessions)
(25, 9, 11, 3),  -- Bakkerijtechnieken

-- Assertiviteit (1 Year, 1 max_sessions)
(26, 10, 12, 1), -- Communicatie

-- Koeltechnieker (1 Year)
(27, 11, 13, 20), -- Koeltechniek
(28, 11, 16, 20), -- HVAC-systemen
(29, 11, 15, 20), -- Elektriciteit

-- Zuiderse Keuken (1 Year, 5 max_sessions)
(30, 12, 10, 5); -- Voedselbereiding