-- insert students
-- depends: 20250312_01_850EW-database-setup
INSERT INTO student (id, firstname, lastname, birthday, email, phone) VALUES
(1, 'Alice', 'Dupont', '1978-04-23', 'alice.dupont@example.com', '+32471234567'),  -- Above 40
(2, 'Bruno', 'Lemaire', '1982-07-15', 'bruno.lemaire@example.com', '+32475678901'),  -- Above 40
(3, 'Charlotte', 'Van Dam', '2000-12-05', 'charlotte.vandam@example.com', '+32479876543'),
(4, 'David', 'Peeters', '1979-06-30', 'david.peeters@example.com', '+32473210987'),  -- Above 40
(5, 'Emma', 'Verstraeten', '1997-09-12', 'emma.verstraeten@example.com', '+32476543210'),
(6, 'Felix', 'Janssens', '1996-02-14', 'felix.janssens@example.com', '+32471122334'),
(7, 'Gabrielle', 'De Smet', '1994-11-28', 'gabrielle.desmet@example.com', '+32472233445'),
(8, 'Hugo', 'Maes', '1999-05-19', 'hugo.maes@example.com', '+32473344556'),
(9, 'Isabelle', 'Claes', '1981-07-21', 'isabelle.claes@example.com', '+32474455667'),  -- Above 40
(10, 'Jasper', 'Goossens', '1992-10-10', 'jasper.goossens@example.com', '+32475566778'),
(11, 'Katrien', 'Wouters', '1983-03-18', 'katrien.wouters@example.com', '+32476677889'),  -- Above 40
(12, 'Liam', 'Van den Broeck', '1997-08-30', 'liam.vandenbroeck@example.com', '+32477788990'),
(13, 'Marie', 'Hendrickx', '1996-12-25', 'marie.hendrickx@example.com', '+32478899001'),
(14, 'Nathan', 'Michiels', '2000-01-08', 'nathan.michiels@example.com', '+32479900112'),
(15, 'Olivia', 'Dumont', '1998-06-14', 'olivia.dumont@example.com', '+32471011223'),
(16, 'Paul', 'Verhoeven', '1977-09-29', 'paul.verhoeven@example.com', '+32472122334'),  -- Above 40
(17, 'Quentin', 'De Ridder', '1999-02-05', 'quentin.deridder@example.com', '+32473233445'),
(18, 'Roxane', 'Vandenberghe', '2001-11-11', 'roxane.vandenberghe@example.com', '+32474344556'),
(19, 'Sebastien', 'De Graeve', '1994-07-04', 'sebastien.degraeve@example.com', '+32475455667'),
(20, 'Tessa', 'Mertens', '1995-05-22', 'tessa.mertens@example.com', '+32476566778'),
(21, 'Ugo', 'Jacobs', '1997-04-17', 'ugo.jacobs@example.com', '+32477677889'),
(22, 'Valerie', 'Leclercq', '1999-09-05', 'valerie.leclercq@example.com', '+32478788990'),
(23, 'Wouter', 'Stevens', '1996-01-29', 'wouter.stevens@example.com', '+32479899001'),
(24, 'Xavier', 'De Vos', '1998-10-12', 'xavier.devos@example.com', '+32471000112'),
(25, 'Yasmine', 'Cornelis', '2000-08-03', 'yasmine.cornelis@example.com', '+32472111223'),
(26, 'Zeno', 'Lemmens', '1976-12-07', 'zeno.lemmens@example.com', '+32473222334'),  -- Above 40
(27, 'Annelies', 'Vandermeersch', '1995-06-26', 'annelies.vandermeersch@example.com', '+32474333445'),
(28, 'Bert', 'De Wilde', '1997-02-14', 'bert.dewilde@example.com', '+32475444556'),
(29, 'Caroline', 'Govaerts', '1999-05-31', 'caroline.govaerts@example.com', '+32476555667'),
(30, 'Daan', 'Vrancken', '2001-03-19', 'daan.vrancken@example.com', '+32477666778'),
(31, 'Elise', 'Declercq', '1994-11-22', 'elise.declercq@example.com', '+32478777889'),
(32, 'Frederik', 'Vandenbossche', '1998-09-14', 'frederik.vandenbossche@example.com', '+32479888990'),
(33, 'Gilles', 'De Coster', '2000-04-05', 'gilles.decoster@example.com', '+32471099001'),
(34, 'Hanne', 'Verstraeten', '1975-08-30', 'hanne.verstraeten@example.com', '+32472100112'),  -- Above 40
(35, 'Ines', 'Peeters', '1996-07-19', 'ines.peeters@example.com', '+32473211223'),
(36, 'Jonas', 'Vereecken', '1995-02-28', 'jonas.vereecken@example.com', '+32474322334'),
(37, 'Kim', 'Van der Veken', '1997-06-06', 'kim.vanderveken@example.com', '+32475433445'),
(38, 'Lise', 'Timmermans', '1999-12-18', 'lise.timmermans@example.com', '+32476544556'),
(39, 'Matthias', 'Van Hoof', '2001-05-09', 'matthias.vanhoof@example.com', '+32477655667'),
(40, 'Noa', 'De Waele', '1994-10-29', 'noa.dewaele@example.com', '+32478766778'),
(41, 'Olivier', 'Baert', '1980-03-14', 'olivier.baert@example.com', '+32479877889'),  -- Above 40
(42, 'Pauline', 'Segers', '2000-02-25', 'pauline.segers@example.com', '+32471088990'),
(43, 'Quinten', 'De Meyer', '1973-09-06', 'quinten.demeyer@example.com', '+32472199001'),  -- Above 40
(44, 'Ruben', 'Van Geel', '1996-01-30', 'ruben.vangeel@example.com', '+32473200112'),
(45, 'Sophie', 'Desmet', '1997-11-13', 'sophie.desmet@example.com', '+32474311223'),
(46, 'Thomas', 'Van Loon', '1999-07-15', 'thomas.vanloon@example.com', '+32475422334'),
(47, 'Ulrike', 'Michiels', '2001-08-22', 'ulrike.michiels@example.com', '+32476533445'),
(48, 'Victor', 'De Pauw', '1974-05-17', 'victor.depauw@example.com', '+32477644556'),  -- Above 40
(49, 'Wendy', 'Van Dijk', '1998-10-03', 'wendy.vandijk@example.com', '+32478755667'),
(50, 'Xander', 'Jansen', '2000-09-29', 'xander.jansen@example.com', '+32479866778'),
(51, 'Yvette', 'Lambrechts', '1995-01-14', 'yvette.lambrechts@example.com', '+32471077889'),
(52, 'Zachary', 'Dewulf', '1997-12-22', 'zachary.dewulf@example.com', '+32472188990'),
(53, 'Annabel', 'Geerts', '1999-11-30', 'annabel.geerts@example.com', '+32473299001'),
(54, 'Bart', 'Claessens', '2001-07-08', 'bart.claessens@example.com', '+32474300112'),
(55, 'Celine', 'Duchateau', '1996-04-11', 'celine.duchateau@example.com', '+32475411223'),
(56, 'Dirk', 'Vervoort', '1994-08-27', 'dirk.vervoort@example.com', '+32476522334'),
(57, 'Eva', 'De Bock', '1998-02-15', 'eva.debock@example.com', '+32477633445'),
(58, 'Freya', 'Van Damme', '2000-06-20', 'freya.vandamme@example.com', '+32478744556'),
(59, 'Gust', 'Lenaerts', '1993-09-05', 'gust.lenaerts@example.com', '+32479855667'),
(60, 'Hannelore', 'Coene', '1997-05-14', 'hannelore.coene@example.com', '+32471066778');
