"""
insert registrations
"""

import random
from yoyo import step
import numpy as np


def apply_step(connection):
    cursor = connection.cursor()
    
    cursor.execute("SELECT id FROM program_period")
    program_periods = cursor.fetchall()
    normalized_periods = [item[0] for item in program_periods]

    cursor.execute("SELECT id FROM student")
    students = cursor.fetchall()
    normalized_students = [item[0] for item in students]
    
    for program_period in normalized_periods:
        cursor.execute("SELECT id FROM class WHERE program_period_id = %s", (program_period,))
        classes = [item[0] for item in cursor.fetchall()]
        
        multiplier = len(classes)
        students = random.sample(normalized_students, min(random.randint(multiplier * 5, multiplier * 15), len(normalized_students)))
        
        student_splits = np.array_split(np.array(students), len(classes))
        
        class_splits = []
        for i,c in enumerate(classes):
            class_splits.append({
                "class": c,
                "students": student_splits[i].tolist()
            })
        
        # all students should be included in the 
        for student in students:
            cursor.execute("INSERT INTO registration (program_period_id, student_id, status) VALUES(%s, %s, 'pending');", (program_period, student))
        
        for class_split in class_splits:
            for student_split in class_split["students"]:
                cursor.execute("INSERT INTO class_student (class_id, student_id) VALUES(%s, %s);", (class_split["class"], student_split))
    

def rollback_step(connection):
    pass

steps = [step(apply_step, rollback_step)]
