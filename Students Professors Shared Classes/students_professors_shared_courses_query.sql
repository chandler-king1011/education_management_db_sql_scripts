USE education_management_schema;

SELECT p.professors_name AS 'Professor', s.students_name AS 'Student', c.courses_name AS 'Course'
FROM students s
JOIN courses_students cs
ON s.students_id = cs.student_id
JOIN courses c
ON cs.course_id = c.courses_id
JOIN professors p
ON c.courses_professor_id = p.professors_id
GROUP BY c.courses_id
ORDER BY p.professors_id;