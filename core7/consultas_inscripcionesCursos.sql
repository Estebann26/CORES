-- 5 nuevos estudiantes
INSERT INTO estudiantes (nombre, edad)
VALUES ('Lucia Perez', 21),
('Diego Romero', 20),
('Sara Morales', 23),
('Andres Lopez', 22),
('Carmen Diaz', 19);

SELECT * FROM estudiantes;

-- 4 nuevos cursos
INSERT INTO cursos (nombre, duracion)
VALUES ('Ciencias', 35),
('Geografia', 28),
('Musica', 45),
('Programacion', 50);

SELECT * FROM cursos;

-- Asociar a 4 estudiantes a 2 cursos dados de alta.
INSERT INTO inscripciones (id_estudiante, id_curso)
VALUES (1, 1),
(1, 3),
(2, 2),
(2, 4),
(3, 1),
(3, 2),
(4, 3),
(5, 4);

SELECT * FROM inscripciones;

-- Todos los estudiantes y sus cursos
SELECT e.nombre AS Estudiante, c.nombre AS Curso
FROM estudiantes e LEFT JOIN inscripciones i
ON e.id = i.id_estudiante
LEFT JOIN cursos c
ON i.id_curso = c.id;

-- Todos los estudiantes que están inscritos en un curso
SELECT e.nombre
FROM estudiantes e
JOIN inscripciones i ON e.id = i.id_estudiante
JOIN cursos c ON i.id_curso = c.id
WHERE c.nombre = 'Musica';

-- Número de estudiantes inscritos en cada curso y muestra el nombre del curso junto con el número de estudiantes
SELECT c.nombre, COUNT(i.id_estudiante) AS numero_estudiantes
FROM cursos c
LEFT JOIN inscripciones i
ON c.id = i.id_curso
GROUP BY c.id, c.nombre;

-- Estudiantes que no están inscritos en ningún curso.
SELECT e.nombre
FROM estudiantes e
LEFT JOIN inscripciones i ON e.id = i.id_estudiante
WHERE i.id_estudiante IS NULL;