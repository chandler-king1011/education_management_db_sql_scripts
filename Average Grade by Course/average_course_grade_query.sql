USE education_management_schema;

SELECT c.courses_name AS 'Course Title', AVG(g.grades_grade) AS 'Average Grade'
FROM courses c
JOIN grades g
ON courses_id = grades_courses_id
GROUP BY c.courses_name
ORDER BY AVG(g.grades_grade) ASC;



