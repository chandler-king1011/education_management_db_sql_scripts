USE education_management_schema;

SELECT AVG(g.grades_grade) AS 'Average Grade Given', p.professors_name AS Professor
FROM grades g
JOIN professors p
ON  grades_professors_id = professors_id
GROUP BY p.professors_name
ORDER BY AVG(g.grades_grade) DESC;