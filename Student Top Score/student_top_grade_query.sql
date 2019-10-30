USE education_management_schema;

SELECT MAX(g.grades_grade) AS 'Top Grade', s.students_name AS "Student Name"
FROM students s
JOIN  grades g 
ON s.students_id = g.grades_students_id
GROUP BY s.students_name
ORDER BY MAX(g.grades_grade) DESC;