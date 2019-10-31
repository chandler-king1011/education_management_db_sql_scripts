USE education_management_schema;

SELECT s.students_name AS 'Student Name', s.students_email AS 'e-mail', c.courses_name AS 'Course Title'
FROM students s
	JOIN grades g
	ON g.grades_students_id = s.students_id
    JOIN courses c
    ON c.courses_id = g.grades_courses_id
WHERE g.grades_grade > 0
GROUP BY s.students_name;
    