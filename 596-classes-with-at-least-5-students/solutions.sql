SELECT class
FROM (
    SELECT class, COUNT(*) AS no_of_students_in_a_class
    FROM Courses
    GROUP BY class
)
WHERE no_of_students_in_a_class >= 5;
