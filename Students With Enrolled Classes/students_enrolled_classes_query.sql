USE education_management_schema;

SELECT s.students_name, c.courses_name
FROM students s
JOIN courses_students cs
ON s.students_id = cs.student_id
JOIN courses c 
ON c.courses_id = cs.course_id
GROUP BY c.courses_name
ORDER BY s.students_name;