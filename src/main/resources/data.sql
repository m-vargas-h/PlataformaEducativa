-- Usuarios (contraseñas encriptadas con BCrypt, todas son "password123")
INSERT INTO usuario (nombre, email, password, rol) VALUES
('Admin Sistema', 'admin@duoc.cl', '$2a$10$VI57aiihCK0uxtgUP6Vy6e0LwlQCRghACNeZYalnhTvCkIU2e3MYO', 'ADMIN'),
('Juan Profesor', 'profesor@duoc.cl', '$2a$10$VI57aiihCK0uxtgUP6Vy6e0LwlQCRghACNeZYalnhTvCkIU2e3MYO', 'PROFESOR'),
('María Alumna', 'alumno@duoc.cl', '$2a$10$VI57aiihCK0uxtgUP6Vy6e0LwlQCRghACNeZYalnhTvCkIU2e3MYO', 'ALUMNO');

-- Cursos
INSERT INTO curso (nombre, instructor, duracion, costo) VALUES
('Java Avanzado', 'Juan Profesor', 40, 49990),
('Spring Boot', 'Juan Profesor', 30, 39990),
('Cloud Native', 'Juan Profesor', 35, 44990);

-- Inscripción de prueba (RabbitMQ)
INSERT INTO inscripcion (total_pagar, fecha_inscripcion, usuario_id) VALUES
(89980.00, CURRENT_TIMESTAMP, 1);

INSERT INTO inscripcion_curso (curso_id, inscripcion_id) VALUES
(1, 1),
(2, 1);