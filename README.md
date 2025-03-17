# Opdracht databanken

## Beschrijving
Maak een databank school. Bestaande uit docenten, cursisten, opleiding, vakken, klassen, inschrijvingen.   

Extra info. Een vak kan in meerdere opleidingen voorkomen. Bvb het vak databanken in de opleiding java
en python. Dit kan ook door verschillende docenten gegeven worden. Zorg dus voor een structuur dat een
docent databanken kan geven in de opleiding java en dat een andere docent diezelfde vak kan geven in de
opleiding python. Een vak bevat het aantal uren dat een docent eraan besteed

## Setup
### Step 1: Create and Activate Virtual Environment
#### For Linux/macOS:
```bash
python3 -m venv .venv
source .venv/bin/activate
```

#### For Windows (Command Prompt):
```cmd
python -m venv .venv
.venv\Scripts\activate
```

#### For Windows (PowerShell):
```powershell
python -m venv .venv
.venv\Scripts\Activate.ps1
```

### Step 2: Install Dependencies
Once the virtual environment is activated, install the required packages:
```bash
pip install -r requirements.txt
```

### Step 3: Apply Database Migrations with Yoyo
This project uses **Yoyo Migrations** for database versioning.

To apply all pending migrations, run:
```bash
yoyo apply
```

## Opdrachten / sql queries

1. Toon alle opleidingen -> [./query/show_all_programs.sql](./query/show_all_programs.sql)
2. Toon alle klassen en daarnaast hun opleiding -> [./query/show_program_classes.sql](./query/show_program_classes.sql)
3. Toon het aantal leerlingen per opleiding (gegroepeerd) -> [./query/count_program_students.sql](./query/count_program_students.sql)
4. Toon de 3 meest populaire opleidingen bij mensen boven de 40j -> [./query/most_popular_programs_for_elderly.sql](./query/most_popular_programs_for_elderly.sql)
5. Toon welke 5 cursisten zich het meeste ingeschreven hebben in een opleiding -> [./query/show_most_registrations_by_student.sql](./query/show_most_registrations_by_student.sql)
6. Toon welke docenten lesgeven op opleiding -> [./query/show_teachers_for_program.sql](./query/show_teachers_for_program.sql)
7. Toon de opleidingen waar docent x lesgeven -> [./query/show_programs_for_teacher.sql](./query/show_programs_for_teacher.sql)
8. Hoeveel cursisten hebben het vak x gevolgd. -> [./query/count_students_receiving_subject.sql](./query/count_students_receiving_subject.sql)
9. Welke  4 opleidingen hebben de meeste uren(totaal). -> [./query/show_programs_with_most_hours.sql](./query/show_programs_with_most_hours.sql)
10. Wat zijn de 3 goedkoopste opleidingen -> [./query/show_cheapest_programs.sql](./query/show_cheapest_programs.sql)
11. Welke docenten heeft cursist x gehad. -> [./query/teachers_who_taught_student.sql](./query/teachers_who_taught_student.sql)
12. Welke cursisten heeft docent x. -> [./query/show_students_got_taught_by_teacher.sql](./query/show_students_got_taught_by_teacher.sql)

## Uitleg bij uitgewerkt database design

### Tabel + tabelnamen
#### program
```program``` kan rechstreeks vertaald worden naar opleiding
#### program_year
```program_year``` tabel dient voor de opleidingen op te delen in jaren
#### program_period
tabel ```program_period``` zorgt voor de begin en einddata van voor het jaar van de opleiding
#### program_year_subject
Een opleiding heeft verschillende ```subject```, wat in principe kan vertaald worden naar een
opleiding heeft vakken, aan deze vakken zit een totaal van uren die verschillend is per opleiding. Op
deze manier kan je dus ook dezelfde vakken hebben in meerdere jaren.
#### subject
```subject``` is het vak dat gegeven word
#### class
tabel ```class``` zorgt voor de klassen
#### program_period_schedule
tabel ```program_period_schedule``` zorgt voor de koppeling tussen klas, leerkracht en het subject. 
#### teacher
table ```teacher``` zorgt voor de leerkrachten
#### program_period_schedule_timeslot
tabel ```program_period_schedule_timeslot``` is de tabel waarbij we tijdsloten kunnen toekennen aan een
opleiding
#### class_student
tabel ```class_student``` zorgt voor de koppeling tussen een klas en een student
#### student
tabel ```student``` zijn de studenten
#### registration
tabel ```registration``` zijn de studenten die ingeschreven zijn met een status veld om na te gaan of
men (of niet) geslaagd zijn
#### location
tabel ```location``` zijn de locaties waar de les gegeven zal worden

### Overwegingen
#### Waarom link je ```teacher``` niet in ```program_year_subject```?
Stel, een leerkracht valt ziek uit en word vervangen door een ander leerkracht, de vakken die nog
gevolgd dienen te worden kunnen dan makkelijk aangepast worden naar de nieuwe leerkracht, dit zorgt
voor juiste logs nadien. De vakken die gegeven zijn door de leekracht, die ziek uitgevallen is,
zullen nog deze leerkracht gekoppeld hebben, de vakken door de nieuwe leerkracht kunnen hierbij
makkelijke aangepast worden.
#### Waarom word ```location``` gelinkt aan ```program_period_schedule_timeslot```?
Bij Syntra kan een locatie niet gebonden worden aan een vak, het gebeurd meermaals dat locaties
gewisseld worden

