Use microdesafio1;

Select * from cursos;


INSERT INTO Microdesafio1.Cursos (`id`, `titulo`, `descripcion`, `imagen`, `fecha_inicio`, `fecha_finalizacion`, `cupo_max`)
VALUES
(1, 'Introducción a Python', 'Curso introductorio de Python', 'python_intro.jpg', '2024-05-01', '2024-06-15', 30),
(2, 'Diseño Web Avanzado', 'Aprende técnicas avanzadas de diseño web', 'web_design.jpg', '2024-05-10', '2024-07-01', 25),
(3, 'Marketing Digital', 'Estrategias modernas de marketing en línea', 'digital_marketing.jpg', '2024-06-01', '2024-07-30', 40),
(4, 'Inglés Conversacional', 'Práctica y mejora tu inglés hablado', 'english_conversation.jpg', '2024-05-15', '2024-07-01', 20),
(5, 'Introducción al Machine Learning', 'Conceptos básicos de machine learning', 'machine_learning_intro.jpg', '2024-06-10', '2024-08-15', 35),
(6, 'Fotografía Creativa', 'Técnicas avanzadas de fotografía artística', 'creative_photography.jpg', '2024-05-20', '2024-07-10', 15),
(7, 'Desarrollo de Aplicaciones Móviles', 'Crea apps para dispositivos móviles', 'mobile_app_dev.jpg', '2024-06-15', '2024-08-30', 30),
(8, 'Gestión de Proyectos', 'Herramientas para la gestión eficaz de proyectos', 'project_management.jpg', '2024-05-05', '2024-07-20', 25),
(9, 'Dibujo Artístico', 'Aprende a dibujar con técnicas profesionales', 'art_drawing.jpg', '2024-06-20', '2024-08-10', 20),
(10, 'Programación en C++', 'Curso avanzado de programación en C++', 'cplusplus_programming.jpg', '2024-05-25', '2024-07-30', 30),
(11, 'Cocina Internacional', 'Descubre la diversidad culinaria mundial', 'international_cuisine.jpg', '2024-06-01', '2024-08-15', 20),
(12, 'Diseño Gráfico Profesional', 'Aprende diseño gráfico con enfoque profesional', 'professional_graphic_design.jpg', '2024-05-10', '2024-07-01', 25),
(13, 'Finanzas Personales', 'Gestión inteligente de finanzas personales', 'personal_finance.jpg', '2024-06-05', '2024-08-10', 30),
(14, 'Redes Sociales para Emprendedores', 'Estrategias de redes sociales para emprendedores', 'social_media_for_entrepreneurs.jpg', '2024-05-15', '2024-07-30', 20),
(15, 'Introducción al Arte Contemporáneo', 'Explora el arte contemporáneo y sus tendencias', 'contemporary_art.jpg', '2024-06-10', '2024-08-15', 25);


Select * from categorias;

INSERT INTO microdesafio1.Categorias (`id`,`tipo`)
VALUES
(1, 'Estudiantes'),
(2, 'Docentes'),
(3, 'Administradores');


Select * from unidades;

INSERT INTO microdesafio1.unidades (`id`, `titulo`, `descripcion`, `fecha_inicio`, `Cursos_id`)
VALUES
(1, 'Unidad 1', 'Descripción de la Unidad 1', '2024-05-01', 1),
(2, 'Unidad 2', 'Descripción de la Unidad 2', '2024-05-10', 2),
(3, 'Unidad 3', 'Descripción de la Unidad 3', '2024-06-01', 3),
(4, 'Unidad 4', 'Descripción de la Unidad 4', '2024-05-15', 4),
(5, 'Unidad 5', 'Descripción de la Unidad 5', '2024-06-10', 5),
(6, 'Unidad 6', 'Descripción de la Unidad 6', '2024-05-20', 6),
(7, 'Unidad 7', 'Descripción de la Unidad 7', '2024-06-15', 7),
(8, 'Unidad 8', 'Descripción de la Unidad 8', '2024-05-05', 8),
(9, 'Unidad 9', 'Descripción de la Unidad 9', '2024-06-20', 9),
(10, 'Unidad 10', 'Descripción de la Unidad 10', '2024-05-25', 10),
(11, 'Unidad 11', 'Descripción de la Unidad 11', '2024-06-01', 11),
(12, 'Unidad 12', 'Descripción de la Unidad 12', '2024-05-10', 12),
(13, 'Unidad 13', 'Descripción de la Unidad 13', '2024-06-05', 13),
(14, 'Unidad 14', 'Descripción de la Unidad 14', '2024-05-15', 14),
(15, 'Unidad 15', 'Descripción de la Unidad 15', '2024-06-10', 15),
(16, 'Unidad 16', 'Descripción de la Unidad 16', '2024-07-01', 1),
(17, 'Unidad 17', 'Descripción de la Unidad 17', '2024-05-20', 4),
(18, 'Unidad 18', 'Descripción de la Unidad 18', '2024-06-15', 4),
(19, 'Unidad 19', 'Descripción de la Unidad 19', '2024-07-01', 4),
(20, 'Unidad 20', 'Descripción de la Unidad 20', '2024-05-25', 5),
(21, 'Unidad 21', 'Descripción de la Unidad 21', '2024-06-01', 5),
(22, 'Unidad 22', 'Descripción de la Unidad 22', '2024-07-05', 5),
(23, 'Unidad 23', 'Descripción de la Unidad 23', '2024-05-15', 5),
(24, 'Unidad 24', 'Descripción de la Unidad 24', '2024-06-10', 6),
(25, 'Unidad 25', 'Descripción de la Unidad 25', '2024-07-01', 6),
(26, 'Unidad 26', 'Descripción de la Unidad 26', '2024-05-20', 6),
(27, 'Unidad 27', 'Descripción de la Unidad 27', '2024-06-15', 7),
(28, 'Unidad 28', 'Descripción de la Unidad 28', '2024-07-10', 7),
(29, 'Unidad 29', 'Descripción de la Unidad 29', '2024-05-05', 8),
(30, 'Unidad 30', 'Descripción de la Unidad 30', '2024-06-01', 8);

Select * From Usuarios;

INSERT INTO Microdesafio1.Usuarios (`nombre`, `apellido`, `email`, `contraseña`, `Categoria_id`)
VALUES
('Juan', 'Perez', 'juan@example.com', 'contraseña123', 1),
('María', 'González', 'maria@example.com', 'password456', 2),
('Pedro', 'Martínez', 'pedro@example.com', 'securepass789', 3),
('Laura', 'López', 'laura@example.com', 'mypassword123', 1),
('Carlos', 'Rodríguez', 'carlos@example.com', 'letmein456', 2),
('Ana', 'Sánchez', 'ana@example.com', 'pass1234', 3),
('Pablo', 'Fernández', 'pablo@example.com', 'password789', 1),
('Lucía', 'Díaz', 'lucia@example.com', 'securepass123', 2),
('Sofía', 'Alvarez', 'sofia@example.com', 'mypassword456', 3),
('Diego', 'Romero', 'diego@example.com', 'letmein789', 1),
('Elena', 'Torres', 'elena@example.com', 'pass4567', 2),
('Martín', 'Jiménez', 'martin@example.com', 'password987', 3),
('Julia', 'Rojas', 'julia@example.com', 'securepass456', 1),
(NULL, 'Hernández', 'mateo@example.com', 'mypassword789', 2),
('Valentina', NULL , 'valentina@example.com', 'letmein123', 3);


INSERT INTO Usuarios_has_Cursos (`Usuarios_id`, `Cursos_id`)
VALUES
(1, 1),  
(1, 2), 
(1, 3),  
(2, 4),  
(2, 5),  
(3, 1),  
(3, 5),  
(4, 6),  
(4, 7),  
(5, 8),  
(6, 9),  
(7, 10), 
(8, 11),
(9, 12),
(10, 13);

UPDATE Usuarios_has_Cursos
SET Usuarios_id = 3
WHERE Usuarios_id = 4 AND Cursos_id = 6;



INSERT INTO Microdesafio1.Clases (`idClases`, `titulo`, `descripcion`, `fecha_de_inicio`, `visibilidad`, `Unidades_id`, `Unidades_Cursos_id`)
VALUES
(1, 'Clase 1', 'Descripción de la Clase 1', '2024-05-01', 1, 1, 1),
(2, 'Clase 2', 'Descripción de la Clase 2', '2024-05-10', 1, 2, 2),
(3, 'Clase 3', 'Descripción de la Clase 3', '2024-06-01', 1, 3, 3),
(4, 'Clase 4', 'Descripción de la Clase 4', '2024-05-15', 1, 4, 4),
(5, 'Clase 5', 'Descripción de la Clase 5', '2024-06-10', 1, 5, 5),
(6, 'Clase 6', 'Descripción de la Clase 6', '2024-05-20', 1, 6, 6),
(7, 'Clase 7', 'Descripción de la Clase 7', '2024-06-15', 1, 7, 7),
(8, 'Clase 8', 'Descripción de la Clase 8', '2024-05-05', 1, 8, 8),
(9, 'Clase 9', 'Descripción de la Clase 9', '2024-06-20', 1, 9, 9),
(10, 'Clase 10', 'Descripción de la Clase 10', '2024-05-25', 1, 10, 10),
(11, 'Clase 11', 'Descripción de la Clase 11', '2024-06-01', 1, 11, 11),
(12, 'Clase 12', 'Descripción de la Clase 12', '2024-05-10', 1, 12, 12),
(13, 'Clase 13', 'Descripción de la Clase 13', '2024-06-05', 1, 13, 13),
(14, 'Clase 14', 'Descripción de la Clase 14', '2024-05-15', 1, 14, 14),
(15, 'Clase 15', 'Descripción de la Clase 15', '2024-06-10', 1, 15, 15);


INSERT INTO Microdesafio1.Bloques (`idBloques`, `titulo`, `visibilidad`, `contenido`, `Clases_idClases`, `Clases_Unidades_id`, `Clases_Unidades_Cursos_id`)
VALUES
(1, 'Bloque 1', 1, 'Contenido del Bloque 1', 1, 1, 1),
(2, 'Bloque 2', 1, 'Contenido del Bloque 2', 2, 2, 2),
(3, 'Bloque 3', 1, 'Contenido del Bloque 3', 3, 3, 3),
(4, 'Bloque 4', 1, 'Contenido del Bloque 4', 4, 4, 4),
(5, 'Bloque 5', 1, 'Contenido del Bloque 5', 5, 5, 5),
(6, 'Bloque 6', 1, 'Contenido del Bloque 6', 6, 6, 6),
(7, 'Bloque 7', 1, 'Contenido del Bloque 7', 7, 7, 7),
(8, 'Bloque 8', 1, 'Contenido del Bloque 8', 8, 8, 8),
(9, 'Bloque 9', 1, 'Contenido del Bloque 9', 9, 9, 9),
(10, 'Bloque 10', 1, 'Contenido del Bloque 10', 10, 10, 10),
(11, 'Bloque 11', 1, 'Contenido del Bloque 11', 11, 11, 11),
(12, 'Bloque 12', 1, 'Contenido del Bloque 12', 12, 12, 12),
(13, 'Bloque 13', 1, 'Contenido del Bloque 13', 13, 13, 13),
(14, 'Bloque 14', 1, 'Contenido del Bloque 14', 14, 14, 14),
(15, 'Bloque 15', 1, 'Contenido del Bloque 15', 15, 15, 15);