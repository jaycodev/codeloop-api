USE course_platform;

INSERT INTO `user` (name, email, password_hash, role, status) VALUES
('Ana María García', 'ana.garcia@email.com', '$2b$12$hash1', 'ESTUDIANTE', 'ACTIVO'),
('Carlos Eduardo López', 'carlos.lopez@email.com', '$2b$12$hash2', 'ESTUDIANTE', 'ACTIVO'),
('María José Rodríguez', 'maria.rodriguez@email.com', '$2b$12$hash3', 'ESTUDIANTE', 'ACTIVO'),
('Luis Fernando Torres', 'luis.torres@email.com', '$2b$12$hash4', 'ESTUDIANTE', 'ACTIVO'),
('Carmen Elena Silva', 'carmen.silva@email.com', '$2b$12$hash5', 'ESTUDIANTE', 'ACTIVO'),
('José Antonio Ruiz', 'jose.ruiz@email.com', '$2b$12$hash6', 'ESTUDIANTE', 'ACTIVO'),
('Laura Patricia Mendoza', 'laura.mendoza@email.com', '$2b$12$hash7', 'ESTUDIANTE', 'ACTIVO'),
('Diego Alejandro Vega', 'diego.vega@email.com', '$2b$12$hash8', 'ESTUDIANTE', 'ACTIVO'),
('Isabella Sofía Cruz', 'isabella.cruz@email.com', '$2b$12$hash9', 'ESTUDIANTE', 'ACTIVO'),
('Roberto Carlos Herrera', 'roberto.herrera@email.com', '$2b$12$hash10', 'ESTUDIANTE', 'ACTIVO'),
('Valentina Nicole Morales', 'valentina.morales@email.com', '$2b$12$hash11', 'ESTUDIANTE', 'ACTIVO'),
('Sebastián David Castro', 'sebastian.castro@email.com', '$2b$12$hash12', 'ESTUDIANTE', 'ACTIVO'),
('Camila Andrea Jiménez', 'camila.jimenez@email.com', '$2b$12$hash13', 'ESTUDIANTE', 'ACTIVO'),
('Daniel Eduardo Vargas', 'daniel.vargas@email.com', '$2b$12$hash14', 'ESTUDIANTE', 'ACTIVO'),
('Sofía Alejandra Ramos', 'sofia.ramos@email.com', '$2b$12$hash15', 'ESTUDIANTE', 'ACTIVO'),
('Dr. Miguel Ángel Fernández', 'miguel.fernandez@profesor.com', '$2b$12$profhash1', 'PROFESOR', 'ACTIVO'),
('Dra. Elena Victoria Sánchez', 'elena.sanchez@profesor.com', '$2b$12$profhash2', 'PROFESOR', 'ACTIVO'),
('Prof. Ricardo Andrés Gómez', 'ricardo.gomez@profesor.com', '$2b$12$profhash3', 'PROFESOR', 'ACTIVO'),
('Dra. Patricia Isabel Martín', 'patricia.martin@profesor.com', '$2b$12$profhash4', 'PROFESOR', 'ACTIVO'),
('Prof. Alejandro José Díaz', 'alejandro.diaz@profesor.com', '$2b$12$profhash5', 'PROFESOR', 'ACTIVO'),
('Admin Principal', 'admin@sistema.com', '$2b$12$adminhash1', 'ADMIN', 'ACTIVO');

INSERT INTO course (title, description, teacher_id, price, image_url, language, level, duration_hours) VALUES 
('HTML desde Cero', 'Aprende los fundamentos de HTML para crear estructuras web sólidas', 16, 19.99, 'https://midu.dev/courses/html-desde-cero.webp', 'Español', 'Básico', 8),
('CSS desde Cero', 'Domina el diseño web con CSS desde conceptos básicos hasta avanzados', 17, 39.99, 'https://midu.dev/courses/css-desde-cero.webp', 'Español', 'Básico', 10),
('Angular 19 PWA', 'Desarrollo de aplicaciones web progresivas con la última versión de Angular', 18, 39.99, 'https://midu.dev/courses/angular-og.webp', 'Español', 'Avanzado', 20),
('Curso de Tailwind CSS', 'Framework CSS utilitario para crear interfaces modernas rápidamente', 19, 29.99, 'https://midu.dev/courses/tailwind-desde-cero.webp', 'Español', 'Intermedio', 12),
('Python desde Cero', 'Curso básico para aprender los fundamentos de Python desde cero', 20, 29.99, 'https://midu.dev/courses/python-desde-cero.webp', 'Español', 'Básico', 15),
('Figma para Devs', 'Herramientas de diseño UI/UX especializadas para desarrolladores', 16, 49.99, 'https://midu.dev/courses/figma-para-devs.webp', 'Español', 'Intermedio', 6),
('GSAP desde Cero', 'Aprende a usar GSAP para crear animaciones increíbles en tu página', 17, 200.00, 'https://midu.dev/courses/gsap-desde-cero.webp', 'Español', 'Intermedio', 18),
('Animaciones en CSS', 'Domina las animaciones CSS desde cero y sorpréndete con efectos que no requieren JavaScript', 18, 180.00, 'https://midu.dev/courses/animaciones-en-css.webp', 'Español', 'Intermedio', 14),
('Curso Intensivo de MCP', 'Aprende a crear, configurar e integrar MCPs para conectar LLMs con APIs', 19, 120.00, 'https://midu.dev/courses/og-curso-intensivo-mcp.webp', 'Español', 'Avanzado', 22),
('Promesas en JavaScript', 'Aprende y domina las promesas en JavaScript para trabajar con asincronía y manejar errores de forma efectiva', 20, 250.00, 'https://midu.dev/courses/og-promesas-javascript.webp', 'Español', 'Intermedio', 9),
('Scraping con Python', 'Aprende a extraer datos de la web con Python utilizando diferentes librerías como BeautifulSoup, Requests y Playwright.', 16, 100.00, 'https://midu.dev/courses/iniciacion-al-scraping-con-python.webp', 'Español', 'Avanzado', 16),
('JavaScript (ES2023 & ES2024)', 'Descubre los nuevos métodos de Array, operadores lógicos y optimización con lo último de JS', 17, 300.00, 'https://midu.dev/courses/ultimas-novedades-javascript.webp', 'Español', 'Avanzado', 12),
('CSS Grid', 'Aprende a crear diseños web modernos y responsivos utilizando CSS Grid.', 18, 160.00, 'https://midu.dev/courses/curso-de-css-grid.webp', 'Español', 'Intermedio', 8),
('Inteligencia Artificial Básica', 'Introducción a Machine Learning y Deep Learning', 19, 400.00, NULL, 'Español', 'Básico', 20),
('Contabilidad para No Contadores', 'Fundamentos contables para emprendedores', 20, 90.00, NULL, 'Español', 'Básico', 6),
('Inglés de Negocios Intermedio', 'Inglés especializado para el mundo empresarial', 16, 110.00, NULL, 'Inglés', 'Intermedio', 25),
('Cocina Internacional Gourmet', 'Técnicas culinarias de diferentes países', 17, 80.00, NULL, 'Español', 'Intermedio', 12),
('Yoga y Meditación Mindfulness', 'Bienestar físico y mental a través del yoga', 18, 70.00, NULL, 'Español', 'Básico', 10),
('Emprendimiento Digital', 'Cómo crear y escalar tu negocio online', 19, 220.00, NULL, 'Español', 'Intermedio', 18),
('Finanzas Personales Inteligentes', 'Manejo efectivo del dinero y inversiones básicas', 20, 130.00, NULL, 'Español', 'Básico', 7);

INSERT INTO lesson (title, content, video_url, course_id, order_num, duration_minutes) VALUES
-- Curso 1: HTML desde Cero (5 lecciones)
('Introducción a HTML', 'Conceptos básicos de HTML y estructura web', 'https://youtu.be/3nYLTiY5skU?t=0&si=TTWpEEjRt8hmOJuw', 1, 1, 15),
('Etiquetas HTML básicas', 'Aprende las etiquetas fundamentales de HTML', 'https://youtu.be/3nYLTiY5skU?t=514&si=oclt6yCr7q8_kbVT', 1, 2, 20),
('Formularios en HTML', 'Creación de formularios interactivos', 'https://youtu.be/3nYLTiY5skU?t=4568&si=_DGTXBdJSIzsUYT1', 1, 3, 25),
('Tablas y listas', 'Organización de contenido con tablas y listas', 'https://youtu.be/3nYLTiY5skU?t=948&si=dVdgWnJYF-QmM9ku', 1, 4, 18),
('HTML semántico', 'Uso de etiquetas semánticas para mejor accesibilidad', 'https://youtu.be/3nYLTiY5skU?t=567&si=EA8AR6bSZSu6MYs1', 1, 5, 22),

-- Curso 2: CSS desde Cero (6 lecciones)
('Introducción a CSS', 'Sintaxis básica y selectores CSS', 'https://youtu.be/hrxjBqZWsb0?t=0&si=JFjBnM9pPVf-OZxi', 2, 1, 18),
('Modelo de caja', 'Padding, margin, border y box-sizing', 'https://youtu.be/hrxjBqZWsb0?t=5220&si=nl4H6hB1ff7HGG7B', 2, 2, 22),
('Posicionamiento CSS', 'Static, relative, absolute y fixed', 'https://youtu.be/PSwlAuRbv_A?t=1106&si=oTD0-M55zFtowPuq', 2, 3, 25),
('Flexbox', 'Layout moderno con Flexbox', 'https://youtu.be/PSwlAuRbv_A?t=2726&si=9ASuQs_orM-5q40b', 2, 4, 28),
('CSS Grid básico', 'Introducción a CSS Grid Layout', 'https://youtu.be/iTjkiI8QQsM?t=238&si=8bXikbz7ct7zokis', 2, 5, 30),
('Responsive Design', 'Media queries y diseño adaptable', 'https://youtu.be/TlJbu0BMLaY?t=4717&si=778LV4QXjpAwncIZ', 2, 6, 26),

-- Curso 3: Angular 19 PWA (las 5 lecciones existentes)
('Introducción a bases de datos', 'Conceptos básicos de bases relacionales', 'https://video.com/pg1', 3, 1, 14),
('Instalación de PostgreSQL', 'Setup completo del servidor de BD', 'https://video.com/pg2', 3, 2, 18),
('Creación de tablas', 'DDL y estructura de datos', 'https://video.com/pg3', 3, 3, 20),
('Consultas SELECT básicas', 'Obtener información de las tablas', 'https://video.com/pg4', 3, 4, 25),
('Optimización de consultas', 'Índices y performance en PostgreSQL', 'https://video.com/pg5', 3, 5, 28),

-- Curso 4: Tailwind CSS (5 lecciones)
('Instalación de Tailwind', 'Setup y configuración inicial', 'https://video.com/tailwind1', 4, 1, 16),
('Utilidades de espaciado', 'Padding, margin y spacing utilities', 'https://video.com/tailwind2', 4, 2, 20),
('Sistema de colores', 'Paleta de colores y personalización', 'https://video.com/tailwind3', 4, 3, 18),
('Responsive con Tailwind', 'Breakpoints y diseño adaptable', 'https://video.com/tailwind4', 4, 4, 22),
('Componentes personalizados', 'Creación de componentes reutilizables', 'https://video.com/tailwind5', 4, 5, 24),

-- Curso 5: Python desde Cero (las 5 lecciones existentes)
('¿Qué es Python?', 'Introducción al lenguaje Python y sus aplicaciones', 'https://video.com/python1', 5, 1, 12),
('Instalación y configuración', 'Cómo instalar Python en tu computadora', 'https://video.com/python2', 5, 2, 15),
('Variables y tipos de datos', 'Aprende sobre strings, números y booleanos', 'https://video.com/python3', 5, 3, 18),
('Estructuras de control', 'If, else, elif y bucles en Python', 'https://video.com/python4', 5, 4, 22),
('Funciones en Python', 'Creación y uso de funciones personalizadas', 'https://video.com/python5', 5, 5, 20),

-- Curso 6: Figma para Devs (5 lecciones)
('Introducción a Figma', 'Interface y herramientas básicas', 'https://video.com/figma1', 6, 1, 14),
('Componentes y variantes', 'Creación de sistemas de diseño', 'https://video.com/figma2', 6, 2, 20),
('Prototipos interactivos', 'Animaciones y transiciones', 'https://video.com/figma3', 6, 3, 18),
('Auto Layout', 'Diseños responsivos en Figma', 'https://video.com/figma4', 6, 4, 22),
('Handoff a desarrollo', 'Exportación y especificaciones', 'https://video.com/figma5', 6, 5, 16),

-- Curso 7: GSAP desde Cero (6 lecciones)
('Introducción a GSAP', 'Qué es GSAP y por qué usarlo', 'https://video.com/gsap1', 7, 1, 18),
('Animaciones básicas', 'Tween y timeline básicos', 'https://video.com/gsap2', 7, 2, 22),
('Controles de timeline', 'Play, pause, reverse y repeat', 'https://video.com/gsap3', 7, 3, 20),
('ScrollTrigger', 'Animaciones activadas por scroll', 'https://video.com/gsap4', 7, 4, 25),
('Morphing SVG', 'Animaciones de vectores complejas', 'https://video.com/gsap5', 7, 5, 24),
('Performance y optimización', 'Mejores prácticas para animaciones', 'https://video.com/gsap6', 7, 6, 21),

-- Curso 8: Animaciones en CSS (5 lecciones)
('Transiciones CSS', 'Propiedades transition y timing', 'https://video.com/css-anim1', 8, 1, 16),
('Keyframes y animations', 'Animaciones complejas con @keyframes', 'https://video.com/css-anim2', 8, 2, 20),
('Transform 2D y 3D', 'Rotaciones, escalas y perspectiva', 'https://video.com/css-anim3', 8, 3, 22),
('Animaciones de carga', 'Spinners y loading animations', 'https://video.com/css-anim4', 8, 4, 18),
('Hover effects avanzados', 'Efectos interactivos sin JavaScript', 'https://video.com/css-anim5', 8, 5, 24),

-- Curso 9: MCP (5 lecciones)
('¿Qué es MCP?', 'Model Context Protocol explicado', 'https://video.com/mcp1', 9, 1, 20),
('Instalación y setup', 'Configuración del entorno MCP', 'https://video.com/mcp2', 9, 2, 18),
('Creación de servidor MCP', 'Tu primer servidor personalizado', 'https://video.com/mcp3', 9, 3, 25),
('Integración con APIs', 'Conectando servicios externos', 'https://video.com/mcp4', 9, 4, 28),
('Deploy y producción', 'Llevar MCP a producción', 'https://video.com/mcp5', 9, 5, 24),

-- Curso 10: Promesas en JavaScript (5 lecciones)
('¿Qué son las promesas?', 'Concepto y sintaxis básica', 'https://video.com/promesas1', 10, 1, 16),
('Then, catch y finally', 'Manejo de promesas con métodos', 'https://video.com/promesas2', 10, 2, 18),
('Async/await', 'Sintaxis moderna para promesas', 'https://video.com/promesas3', 10, 3, 20),
('Promise.all y Promise.race', 'Manejo de múltiples promesas', 'https://video.com/promesas4', 10, 4, 22),
('Manejo de errores', 'Try/catch y error handling', 'https://video.com/promesas5', 10, 5, 19),

-- Curso 11: Scraping con Python (5 lecciones)
('Introducción al web scraping', 'Conceptos básicos y ética', 'https://video.com/scraping1', 11, 1, 18),
('BeautifulSoup básico', 'Parseo de HTML con BS4', 'https://video.com/scraping2', 11, 2, 22),
('Requests avanzado', 'Headers, sessions y cookies', 'https://video.com/scraping3', 11, 3, 20),
('Selenium y Playwright', 'Scraping de sitios dinámicos', 'https://video.com/scraping4', 11, 4, 25),
('Manejo de datos', 'Almacenamiento y procesamiento', 'https://video.com/scraping5', 11, 5, 24),

-- Curso 12: JavaScript ES2023 & ES2024 (las 5 lecciones existentes)
('Fundamentos de JavaScript', 'Sintaxis básica y conceptos fundamentales', 'https://video.com/js1', 12, 1, 16),
('DOM y manipulación', 'Cómo interactuar con elementos HTML', 'https://video.com/js2', 12, 2, 20),
('Eventos en JavaScript', 'Manejo de clicks, formularios y más', 'https://video.com/js3', 12, 3, 18),
('AJAX y APIs', 'Comunicación con servidores externos', 'https://video.com/js4', 12, 4, 25),
('Frameworks de JavaScript', 'Introducción a React y Vue.js', 'https://video.com/js5', 12, 5, 22),

-- Curso 13: CSS Grid (5 lecciones)
('Introducción a Grid', 'Conceptos básicos de CSS Grid', 'https://video.com/grid1', 13, 1, 18),
('Grid container y items', 'Propiedades del contenedor y elementos', 'https://video.com/grid2', 13, 2, 20),
('Grid lines y areas', 'Definición de áreas y líneas', 'https://video.com/grid3', 13, 3, 22),
('Responsive Grid', 'Grids adaptativos con auto-fit', 'https://video.com/grid4', 13, 4, 24),
('Grid vs Flexbox', 'Cuándo usar cada uno', 'https://video.com/grid5', 13, 5, 16),

-- Curso 14: Inteligencia Artificial Básica (6 lecciones)
('¿Qué es la IA?', 'Introducción a la inteligencia artificial', 'https://video.com/ia1', 14, 1, 20),
('Machine Learning básico', 'Conceptos fundamentales de ML', 'https://video.com/ia2', 14, 2, 25),
('Redes neuronales', 'Introducción a las redes neuronales', 'https://video.com/ia3', 14, 3, 22),
('Python para IA', 'Librerías como NumPy y Pandas', 'https://video.com/ia4', 14, 4, 28),
('Proyecto práctico', 'Tu primer modelo de ML', 'https://video.com/ia5', 14, 5, 30),
('IA en el futuro', 'Tendencias y aplicaciones', 'https://video.com/ia6', 14, 6, 18),

-- Curso 15: Contabilidad para No Contadores (5 lecciones)
('Conceptos básicos', 'Balance, activos y pasivos', 'https://video.com/conta1', 15, 1, 16),
('Estados financieros', 'Interpretación de balances', 'https://video.com/conta2', 15, 2, 18),
('Flujo de caja', 'Manejo del cash flow', 'https://video.com/conta3', 15, 3, 20),
('Costos y gastos', 'Diferenciación y control', 'https://video.com/conta4', 15, 4, 22),
('Impuestos básicos', 'Obligaciones fiscales básicas', 'https://video.com/conta5', 15, 5, 24),

-- Curso 16: Inglés de Negocios (7 lecciones)
('Business vocabulary', 'Vocabulario esencial de negocios', 'https://video.com/eng1', 16, 1, 20),
('Email writing', 'Redacción profesional de emails', 'https://video.com/eng2', 16, 2, 18),
('Presentations skills', 'Presentaciones efectivas en inglés', 'https://video.com/eng3', 16, 3, 22),
('Meeting management', 'Conducir reuniones en inglés', 'https://video.com/eng4', 16, 4, 25),
('Negotiation language', 'Lenguaje para negociaciones', 'https://video.com/eng5', 16, 5, 24),
('Phone calls', 'Llamadas telefónicas profesionales', 'https://video.com/eng6', 16, 6, 20),
('Business culture', 'Cultura empresarial anglosajona', 'https://video.com/eng7', 16, 7, 21),

-- Curso 17: Cocina Internacional (5 lecciones)
('Técnicas básicas', 'Cortes y preparaciones fundamentales', 'https://video.com/cocina1', 17, 1, 22),
('Cocina italiana', 'Pastas y salsas tradicionales', 'https://video.com/cocina2', 17, 2, 25),
('Cocina asiática', 'Stir-fry y técnicas orientales', 'https://video.com/cocina3', 17, 3, 24),
('Cocina francesa', 'Salsas madre y técnicas clásicas', 'https://video.com/cocina4', 17, 4, 28),
('Postres internacionales', 'Dulces del mundo', 'https://video.com/cocina5', 17, 5, 21),

-- Curso 18: Yoga y Meditación (5 lecciones)
('Fundamentos del yoga', 'Historia y principios básicos', 'https://video.com/yoga1', 18, 1, 18),
('Posturas básicas', 'Asanas fundamentales', 'https://video.com/yoga2', 18, 2, 22),
('Respiración (Pranayama)', 'Técnicas de respiración', 'https://video.com/yoga3', 18, 3, 16),
('Meditación mindfulness', 'Práctica de atención plena', 'https://video.com/yoga4', 18, 4, 20),
('Rutina completa', 'Secuencia de yoga integral', 'https://video.com/yoga5', 18, 5, 25),

-- Curso 19: Emprendimiento Digital (6 lecciones)
('Mindset emprendedor', 'Mentalidad y características', 'https://video.com/empren1', 19, 1, 20),
('Validación de ideas', 'Cómo validar tu idea de negocio', 'https://video.com/empren2', 19, 2, 24),
('Modelo de negocio', 'Canvas y estrategias', 'https://video.com/empren3', 19, 3, 26),
('Marketing digital', 'Estrategias online básicas', 'https://video.com/empren4', 19, 4, 25),
('Finanzas para emprendedores', 'Gestión financiera básica', 'https://video.com/empren5', 19, 5, 22),
('Escalabilidad', 'Cómo hacer crecer tu negocio', 'https://video.com/empren6', 19, 6, 23),

-- Curso 20: Finanzas Personales (5 lecciones)
('Presupuesto personal', 'Cómo crear y mantener un presupuesto', 'https://video.com/finanzas1', 20, 1, 18),
('Ahorro e inversión', 'Estrategias de ahorro básicas', 'https://video.com/finanzas2', 20, 2, 20),
('Manejo de deudas', 'Cómo salir de las deudas', 'https://video.com/finanzas3', 20, 3, 22),
('Inversiones básicas', 'Introducción a la inversión', 'https://video.com/finanzas4', 20, 4, 24),
('Planificación a futuro', 'Metas financieras a largo plazo', 'https://video.com/finanzas5', 20, 5, 21);

INSERT INTO enrollment (student_id, course_id, progress, status) VALUES
(1, 1, 75.50, 'ACTIVO'),
(2, 1, 45.20, 'ACTIVO'),
(3, 2, 90.10, 'ACTIVO'),
(4, 2, 30.00, 'ACTIVO'),
(5, 3, 60.75, 'ACTIVO'),
(6, 4, 85.30, 'ACTIVO'),
(7, 5, 25.60, 'ACTIVO'),
(8, 1, 95.80, 'ACTIVO'),
(9, 6, 40.15, 'ACTIVO'),
(10, 7, 70.25, 'ACTIVO'),
(11, 8, 55.90, 'ACTIVO'),
(12, 9, 15.40, 'ACTIVO'),
(13, 10, 80.65, 'ACTIVO'),
(14, 11, 35.85, 'ACTIVO'),
(15, 12, 92.15, 'ACTIVO');

INSERT INTO exam (course_id, title) VALUES
(1, 'Examen Final de Python Básico'),
(2, 'Evaluación JavaScript Web'),
(3, 'Examen PostgreSQL Fundamental'),
(4, 'Test Marketing Digital'),
(5, 'Evaluación Diseño Gráfico'),
(6, 'Examen Excel Avanzado'),
(7, 'Test Fotografía Digital'),
(8, 'Evaluación Gestión Ágil'),
(9, 'Examen IA Básica'),
(10, 'Test Contabilidad Básica'),
(11, 'Evaluación Inglés de Negocios'),
(12, 'Examen Cocina Internacional'),
(13, 'Test Yoga y Meditación'),
(14, 'Evaluación Emprendimiento'),
(15, 'Examen Finanzas Personales');

INSERT INTO question (exam_id, statement, option_a, option_b, option_c, option_d, correct_answer) VALUES
(1, '¿Cuál es la forma correcta de declarar una variable en Python?', 'var nombre = "Juan"', 'nombre = "Juan"', 'string nombre = "Juan"', 'declare nombre = "Juan"', 'B'),
(1, '¿Qué tipo de dato es "True" en Python?', 'String', 'Integer', 'Boolean', 'Float', 'C'),
(1, '¿Cuál es la función para mostrar texto en pantalla?', 'echo()', 'print()', 'display()', 'show()', 'B'),
(2, '¿Cómo se declara una función en JavaScript?', 'function nombre() {}', 'def nombre() {}', 'func nombre() {}', 'method nombre() {}', 'A'),
(2, '¿Qué significa DOM?', 'Data Object Model', 'Document Object Model', 'Dynamic Object Model', 'Digital Object Model', 'B'),
(2, '¿Cuál es el operador de igualdad estricta en JS?', '==', '===', '=', '!=', 'B'),
(3, '¿Cuál es el comando para crear una tabla?', 'MAKE TABLE', 'NEW TABLE', 'CREATE TABLE', 'ADD TABLE', 'C'),
(3, '¿Qué tipo de dato usa PostgreSQL para números decimales?', 'FLOAT', 'DECIMAL', 'NUMERIC', 'REAL', 'C'),
(3, '¿Cuál es la cláusula para filtrar registros?', 'FILTER', 'WHERE', 'HAVING', 'SELECT', 'B'),
(4, '¿Qué es el SEO en marketing digital?', 'Social Engine Optimization', 'Search Engine Optimization', 'Secure Email Operation', 'System Error Operation', 'B'),
(5, '¿Cuál es el formato de imagen con transparencia?', 'JPEG', 'BMP', 'PNG', 'GIF', 'C'),
(6, '¿Qué función suma un rango de celdas en Excel?', 'ADD()', 'SUMA()', 'TOTAL()', 'COUNT()', 'B'),
(7, '¿Qué significa ISO en fotografía?', 'Sensibilidad a la luz', 'Velocidad del obturador', 'Apertura del diafragma', 'Formato de imagen', 'A'),
(8, '¿Cuánto dura un sprint típico en Scrum?', '1 semana', '2-4 semanas', '1 mes', '6 semanas', 'B'),
(9, '¿Qué es Machine Learning?', 'Programación manual', 'Aprendizaje automático', 'Base de datos', 'Red social', 'B'),
(10, '¿Cuál es la ecuación contable básica?', 'Activos = Pasivos + Patrimonio', 'Ingresos = Gastos + Utilidad', 'Ventas = Costos + Ganancia', 'Capital = Deudas + Activos', 'A'),
(11, '¿Qué significa ROI en inglés de negocios?', 'Return on Investment', 'Rate of Interest', 'Risk of Investment', 'Result of Income', 'A'),
(12, '¿Cuál es la temperatura ideal para cocinar pasta?', '80°C', '90°C', '100°C', '110°C', 'C'),
(13, '¿Qué significa "Namaste" en yoga?', 'Hola', 'Adiós', 'Me inclino ante ti', 'Gracias', 'C'),
(14, '¿Qué es un MVP en emprendimiento?', 'Most Valuable Player', 'Minimum Viable Product', 'Maximum Value Proposition', 'Major Venture Plan', 'B'),
(15, '¿Qué porcentaje de ingresos se recomienda ahorrar?', '5-10%', '10-20%', '20-30%', '30-40%', 'B');

INSERT INTO answer (question_id, student_id, answer, is_correct) VALUES
(1, 1, 'B', true),
(2, 1, 'C', true),
(3, 1, 'B', true),
(1, 2, 'A', false),
(2, 2, 'C', true),
(3, 2, 'A', false),
(4, 3, 'A', true),
(5, 3, 'B', true),
(6, 3, 'A', false),
(7, 4, 'A', true),
(8, 4, 'B', true),
(9, 4, 'C', false),
(10, 5, 'B', true),
(11, 5, 'C', true),
(12, 6, 'B', true),
(13, 7, 'C', true),
(14, 8, 'B', true),
(15, 9, 'B', true),
(16, 10, 'A', true),
(17, 11, 'A', true),
(18, 12, 'C', true),
(19, 13, 'C', true),
(20, 14, 'B', true),
(21, 15, 'B', true);

INSERT INTO payment (student_id, course_id, amount, status, payment_method) VALUES
(1, 1, 19.99, 'COMPLETADO', 'TARJETA_CREDITO'),
(2, 1, 19.99, 'COMPLETADO', 'YAPE'),
(3, 2, 39.99, 'COMPLETADO', 'TARJETA_CREDITO'),
(4, 2, 39.99, 'PENDIENTE', 'YAPE'),
(5, 3, 39.99, 'COMPLETADO', 'TARJETA_CREDITO'),
(6, 4, 29.99, 'COMPLETADO', 'YAPE'),
(7, 5, 29.99, 'RECHAZADO', 'TARJETA_CREDITO'),
(8, 1, 19.99, 'COMPLETADO', 'YAPE'),
(9, 6, 49.99, 'COMPLETADO', 'TARJETA_CREDITO'),
(10, 7, 200.00, 'PENDIENTE', 'TARJETA_CREDITO'),
(11, 8, 180.00, 'COMPLETADO', 'YAPE'),
(12, 9, 120.00, 'COMPLETADO', 'TARJETA_CREDITO'),
(13, 10, 250.00, 'COMPLETADO', 'YAPE'),
(14, 11, 100.00, 'PENDIENTE', 'YAPE'),
(15, 12, 300.00, 'COMPLETADO', 'TARJETA_CREDITO'),
(1, 13, 160.00, 'COMPLETADO', 'TARJETA_CREDITO'),
(2, 14, 400.00, 'PENDIENTE', 'YAPE'),
(3, 15, 90.00, 'COMPLETADO', 'TARJETA_CREDITO'),
(4, 16, 110.00, 'COMPLETADO', 'YAPE'),
(5, 17, 80.00, 'RECHAZADO', 'TARJETA_CREDITO'),
(6, 18, 70.00, 'COMPLETADO', 'YAPE'),
(7, 19, 220.00, 'PENDIENTE', 'TARJETA_CREDITO'),
(8, 20, 130.00, 'COMPLETADO', 'YAPE');

-- ENERO 2023
INSERT INTO payment (student_id, course_id, amount, status, payment_method, payment_date) VALUES
(1, 5, 29.99, 'COMPLETADO', 'YAPE', STR_TO_DATE('2023-01-05 09:15:00', '%Y-%m-%d %H:%i:%s')),
(2, 3, 39.99, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2023-01-08 14:30:00', '%Y-%m-%d %H:%i:%s')),
(3, 1, 19.99, 'COMPLETADO', 'YAPE', STR_TO_DATE('2023-01-12 11:20:00', '%Y-%m-%d %H:%i:%s')),
(4, 2, 39.99, 'PENDIENTE', 'TARJETA_CREDITO', STR_TO_DATE('2023-01-15 16:45:00', '%Y-%m-%d %H:%i:%s')),
(5, 6, 49.99, 'COMPLETADO', 'YAPE', STR_TO_DATE('2023-01-20 10:30:00', '%Y-%m-%d %H:%i:%s')),
(6, 4, 29.99, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2023-01-25 13:50:00', '%Y-%m-%d %H:%i:%s'));

-- FEBRERO 2023
INSERT INTO payment (student_id, course_id, amount, status, payment_method, payment_date) VALUES
(7, 8, 180.00, 'COMPLETADO', 'YAPE', STR_TO_DATE('2023-02-02 08:20:00', '%Y-%m-%d %H:%i:%s')),
(8, 1, 19.99, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2023-02-07 15:15:00', '%Y-%m-%d %H:%i:%s')),
(9, 10, 250.00, 'RECHAZADO', 'YAPE', STR_TO_DATE('2023-02-10 12:40:00', '%Y-%m-%d %H:%i:%s')),
(10, 7, 200.00, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2023-02-14 17:25:00', '%Y-%m-%d %H:%i:%s')),
(11, 2, 39.99, 'COMPLETADO', 'YAPE', STR_TO_DATE('2023-02-18 09:55:00', '%Y-%m-%d %H:%i:%s')),
(12, 9, 120.00, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2023-02-23 14:10:00', '%Y-%m-%d %H:%i:%s')),
(13, 5, 29.99, 'PENDIENTE', 'YAPE', STR_TO_DATE('2023-02-28 16:30:00', '%Y-%m-%d %H:%i:%s'));

-- MARZO 2023
INSERT INTO payment (student_id, course_id, amount, status, payment_method, payment_date) VALUES
(14, 11, 100.00, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2023-03-03 10:45:00', '%Y-%m-%d %H:%i:%s')),
(15, 3, 39.99, 'COMPLETADO', 'YAPE', STR_TO_DATE('2023-03-08 13:20:00', '%Y-%m-%d %H:%i:%s')),
(1, 12, 300.00, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2023-03-12 15:35:00', '%Y-%m-%d %H:%i:%s')),
(2, 6, 49.99, 'RECHAZADO', 'YAPE', STR_TO_DATE('2023-03-15 11:50:00', '%Y-%m-%d %H:%i:%s')),
(3, 14, 400.00, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2023-03-20 14:15:00', '%Y-%m-%d %H:%i:%s')),
(4, 8, 180.00, 'COMPLETADO', 'YAPE', STR_TO_DATE('2023-03-25 09:30:00', '%Y-%m-%d %H:%i:%s')),
(5, 13, 160.00, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2023-03-29 16:20:00', '%Y-%m-%d %H:%i:%s'));

-- ABRIL 2023
INSERT INTO payment (student_id, course_id, amount, status, payment_method, payment_date) VALUES
(6, 15, 90.00, 'COMPLETADO', 'YAPE', STR_TO_DATE('2023-04-05 08:40:00', '%Y-%m-%d %H:%i:%s')),
(7, 1, 19.99, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2023-04-10 12:25:00', '%Y-%m-%d %H:%i:%s')),
(8, 16, 110.00, 'PENDIENTE', 'YAPE', STR_TO_DATE('2023-04-14 15:50:00', '%Y-%m-%d %H:%i:%s')),
(9, 4, 29.99, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2023-04-18 10:15:00', '%Y-%m-%d %H:%i:%s')),
(10, 17, 80.00, 'COMPLETADO', 'YAPE', STR_TO_DATE('2023-04-22 13:40:00', '%Y-%m-%d %H:%i:%s')),
(11, 7, 200.00, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2023-04-26 16:05:00', '%Y-%m-%d %H:%i:%s'));

-- MAYO 2023
INSERT INTO payment (student_id, course_id, amount, status, payment_method, payment_date) VALUES
(12, 18, 70.00, 'COMPLETADO', 'YAPE', STR_TO_DATE('2023-05-03 09:20:00', '%Y-%m-%d %H:%i:%s')),
(13, 2, 39.99, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2023-05-08 14:45:00', '%Y-%m-%d %H:%i:%s')),
(14, 19, 220.00, 'RECHAZADO', 'YAPE', STR_TO_DATE('2023-05-12 11:30:00', '%Y-%m-%d %H:%i:%s')),
(15, 5, 29.99, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2023-05-16 15:20:00', '%Y-%m-%d %H:%i:%s')),
(1, 20, 130.00, 'COMPLETADO', 'YAPE', STR_TO_DATE('2023-05-21 10:55:00', '%Y-%m-%d %H:%i:%s')),
(2, 9, 120.00, 'PENDIENTE', 'TARJETA_CREDITO', STR_TO_DATE('2023-05-25 13:15:00', '%Y-%m-%d %H:%i:%s')),
(3, 6, 49.99, 'COMPLETADO', 'YAPE', STR_TO_DATE('2023-05-30 16:40:00', '%Y-%m-%d %H:%i:%s'));

-- JUNIO 2023
INSERT INTO payment (student_id, course_id, amount, status, payment_method, payment_date) VALUES
(4, 11, 100.00, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2023-06-02 08:25:00', '%Y-%m-%d %H:%i:%s')),
(5, 1, 19.99, 'COMPLETADO', 'YAPE', STR_TO_DATE('2023-06-07 12:50:00', '%Y-%m-%d %H:%i:%s')),
(6, 10, 250.00, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2023-06-11 15:35:00', '%Y-%m-%d %H:%i:%s')),
(7, 3, 39.99, 'COMPLETADO', 'YAPE', STR_TO_DATE('2023-06-15 09:10:00', '%Y-%m-%d %H:%i:%s')),
(8, 12, 300.00, 'RECHAZADO', 'TARJETA_CREDITO', STR_TO_DATE('2023-06-20 14:25:00', '%Y-%m-%d %H:%i:%s')),
(9, 8, 180.00, 'COMPLETADO', 'YAPE', STR_TO_DATE('2023-06-24 11:45:00', '%Y-%m-%d %H:%i:%s'));

-- JULIO 2023
INSERT INTO payment (student_id, course_id, amount, status, payment_method, payment_date) VALUES
(10, 13, 160.00, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2023-07-05 10:30:00', '%Y-%m-%d %H:%i:%s')),
(11, 4, 29.99, 'COMPLETADO', 'YAPE', STR_TO_DATE('2023-07-10 13:15:00', '%Y-%m-%d %H:%i:%s')),
(12, 14, 400.00, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2023-07-14 16:20:00', '%Y-%m-%d %H:%i:%s')),
(13, 7, 200.00, 'PENDIENTE', 'YAPE', STR_TO_DATE('2023-07-18 08:55:00', '%Y-%m-%d %H:%i:%s')),
(14, 2, 39.99, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2023-07-22 12:40:00', '%Y-%m-%d %H:%i:%s')),
(15, 15, 90.00, 'COMPLETADO', 'YAPE', STR_TO_DATE('2023-07-27 15:05:00', '%Y-%m-%d %H:%i:%s'));

-- AGOSTO 2023
INSERT INTO payment (student_id, course_id, amount, status, payment_method, payment_date) VALUES
(1, 16, 110.00, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2023-08-03 09:20:00', '%Y-%m-%d %H:%i:%s')),
(2, 5, 29.99, 'COMPLETADO', 'YAPE', STR_TO_DATE('2023-08-08 14:35:00', '%Y-%m-%d %H:%i:%s')),
(3, 17, 80.00, 'RECHAZADO', 'TARJETA_CREDITO', STR_TO_DATE('2023-08-12 11:50:00', '%Y-%m-%d %H:%i:%s')),
(4, 6, 49.99, 'COMPLETADO', 'YAPE', STR_TO_DATE('2023-08-16 15:25:00', '%Y-%m-%d %H:%i:%s')),
(5, 18, 70.00, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2023-08-21 10:10:00', '%Y-%m-%d %H:%i:%s')),
(6, 9, 120.00, 'PENDIENTE', 'YAPE', STR_TO_DATE('2023-08-25 13:45:00', '%Y-%m-%d %H:%i:%s')),
(7, 19, 220.00, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2023-08-30 16:30:00', '%Y-%m-%d %H:%i:%s'));

-- SEPTIEMBRE 2023
INSERT INTO payment (student_id, course_id, amount, status, payment_method, payment_date) VALUES
(8, 20, 130.00, 'COMPLETADO', 'YAPE', STR_TO_DATE('2023-09-04 08:40:00', '%Y-%m-%d %H:%i:%s')),
(9, 1, 19.99, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2023-09-09 12:25:00', '%Y-%m-%d %H:%i:%s')),
(10, 11, 100.00, 'COMPLETADO', 'YAPE', STR_TO_DATE('2023-09-13 15:50:00', '%Y-%m-%d %H:%i:%s')),
(11, 3, 39.99, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2023-09-17 09:15:00', '%Y-%m-%d %H:%i:%s')),
(12, 12, 300.00, 'RECHAZADO', 'YAPE', STR_TO_DATE('2023-09-22 14:30:00', '%Y-%m-%d %H:%i:%s')),
(13, 8, 180.00, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2023-09-26 11:05:00', '%Y-%m-%d %H:%i:%s'));

-- OCTUBRE 2023
INSERT INTO payment (student_id, course_id, amount, status, payment_method, payment_date) VALUES
(14, 4, 29.99, 'COMPLETADO', 'YAPE', STR_TO_DATE('2023-10-02 10:20:00', '%Y-%m-%d %H:%i:%s')),
(15, 13, 160.00, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2023-10-07 13:45:00', '%Y-%m-%d %H:%i:%s')),
(1, 7, 200.00, 'PENDIENTE', 'YAPE', STR_TO_DATE('2023-10-11 16:15:00', '%Y-%m-%d %H:%i:%s')),
(2, 14, 400.00, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2023-10-16 08:50:00', '%Y-%m-%d %H:%i:%s')),
(3, 2, 39.99, 'COMPLETADO', 'YAPE', STR_TO_DATE('2023-10-20 12:35:00', '%Y-%m-%d %H:%i:%s')),
(4, 15, 90.00, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2023-10-25 15:20:00', '%Y-%m-%d %H:%i:%s')),
(5, 10, 250.00, 'COMPLETADO', 'YAPE', STR_TO_DATE('2023-10-29 09:40:00', '%Y-%m-%d %H:%i:%s'));

-- NOVIEMBRE 2023
INSERT INTO payment (student_id, course_id, amount, status, payment_method, payment_date) VALUES
(6, 16, 110.00, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2023-11-03 11:25:00', '%Y-%m-%d %H:%i:%s')),
(7, 5, 29.99, 'COMPLETADO', 'YAPE', STR_TO_DATE('2023-11-08 14:50:00', '%Y-%m-%d %H:%i:%s')),
(8, 17, 80.00, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2023-11-12 10:15:00', '%Y-%m-%d %H:%i:%s')),
(9, 9, 120.00, 'RECHAZADO', 'YAPE', STR_TO_DATE('2023-11-16 13:40:00', '%Y-%m-%d %H:%i:%s')),
(10, 18, 70.00, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2023-11-21 16:05:00', '%Y-%m-%d %H:%i:%s')),
(11, 1, 19.99, 'COMPLETADO', 'YAPE', STR_TO_DATE('2023-11-25 08:30:00', '%Y-%m-%d %H:%i:%s'));

-- DICIEMBRE 2023
INSERT INTO payment (student_id, course_id, amount, status, payment_method, payment_date) VALUES
(12, 6, 49.99, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2023-12-01 09:45:00', '%Y-%m-%d %H:%i:%s')),
(13, 19, 220.00, 'COMPLETADO', 'YAPE', STR_TO_DATE('2023-12-06 12:20:00', '%Y-%m-%d %H:%i:%s')),
(14, 3, 39.99, 'PENDIENTE', 'TARJETA_CREDITO', STR_TO_DATE('2023-12-10 15:35:00', '%Y-%m-%d %H:%i:%s')),
(15, 11, 100.00, 'COMPLETADO', 'YAPE', STR_TO_DATE('2023-12-14 11:50:00', '%Y-%m-%d %H:%i:%s')),
(1, 20, 130.00, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2023-12-18 14:25:00', '%Y-%m-%d %H:%i:%s')),
(2, 8, 180.00, 'COMPLETADO', 'YAPE', STR_TO_DATE('2023-12-22 10:40:00', '%Y-%m-%d %H:%i:%s')),
(3, 12, 300.00, 'RECHAZADO', 'TARJETA_CREDITO', STR_TO_DATE('2023-12-28 16:15:00', '%Y-%m-%d %H:%i:%s'));

-- ===== AÑO 2024 (6 meses adicionales) =====

-- ENERO 2024
INSERT INTO payment (student_id, course_id, amount, status, payment_method, payment_date) VALUES
(4, 4, 29.99, 'COMPLETADO', 'YAPE', STR_TO_DATE('2024-01-05 08:30:00', '%Y-%m-%d %H:%i:%s')),
(5, 7, 200.00, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2024-01-10 11:45:00', '%Y-%m-%d %H:%i:%s')),
(6, 1, 19.99, 'COMPLETADO', 'YAPE', STR_TO_DATE('2024-01-15 14:20:00', '%Y-%m-%d %H:%i:%s')),
(7, 13, 160.00, 'PENDIENTE', 'TARJETA_CREDITO', STR_TO_DATE('2024-01-20 16:35:00', '%Y-%m-%d %H:%i:%s')),
(8, 9, 120.00, 'COMPLETADO', 'YAPE', STR_TO_DATE('2024-01-25 09:50:00', '%Y-%m-%d %H:%i:%s'));

-- FEBRERO 2024
INSERT INTO payment (student_id, course_id, amount, status, payment_method, payment_date) VALUES
(9, 14, 400.00, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2024-02-03 10:25:00', '%Y-%m-%d %H:%i:%s')),
(10, 2, 39.99, 'COMPLETADO', 'YAPE', STR_TO_DATE('2024-02-08 13:40:00', '%Y-%m-%d %H:%i:%s')),
(11, 15, 90.00, 'RECHAZADO', 'TARJETA_CREDITO', STR_TO_DATE('2024-02-12 15:15:00', '%Y-%m-%d %H:%i:%s')),
(12, 6, 49.99, 'COMPLETADO', 'YAPE', STR_TO_DATE('2024-02-17 08:05:00', '%Y-%m-%d %H:%i:%s')),
(13, 16, 110.00, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2024-02-22 12:30:00', '%Y-%m-%d %H:%i:%s')),
(14, 5, 29.99, 'COMPLETADO', 'YAPE', STR_TO_DATE('2024-02-27 16:55:00', '%Y-%m-%d %H:%i:%s'));

-- MARZO 2024
INSERT INTO payment (student_id, course_id, amount, status, payment_method, payment_date) VALUES
(15, 17, 80.00, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2024-03-04 09:15:00', '%Y-%m-%d %H:%i:%s')),
(1, 18, 70.00, 'COMPLETADO', 'YAPE', STR_TO_DATE('2024-03-09 12:40:00', '%Y-%m-%d %H:%i:%s')),
(2, 10, 250.00, 'PENDIENTE', 'TARJETA_CREDITO', STR_TO_DATE('2024-03-14 15:25:00', '%Y-%m-%d %H:%i:%s')),
(3, 19, 220.00, 'COMPLETADO', 'YAPE', STR_TO_DATE('2024-03-18 11:50:00', '%Y-%m-%d %H:%i:%s')),
(4, 3, 39.99, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2024-03-23 14:10:00', '%Y-%m-%d %H:%i:%s')),
(5, 20, 130.00, 'COMPLETADO', 'YAPE', STR_TO_DATE('2024-03-28 10:35:00', '%Y-%m-%d %H:%i:%s'));

-- ABRIL 2024
INSERT INTO payment (student_id, course_id, amount, status, payment_method, payment_date) VALUES
(6, 11, 100.00, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2024-04-02 13:20:00', '%Y-%m-%d %H:%i:%s')),
(7, 8, 180.00, 'COMPLETADO', 'YAPE', STR_TO_DATE('2024-04-07 16:45:00', '%Y-%m-%d %H:%i:%s')),
(8, 2, 39.99, 'RECHAZADO', 'TARJETA_CREDITO', STR_TO_DATE('2024-04-12 08:30:00', '%Y-%m-%d %H:%i:%s')),
(9, 12, 300.00, 'COMPLETADO', 'YAPE', STR_TO_DATE('2024-04-16 11:55:00', '%Y-%m-%d %H:%i:%s')),
(10, 4, 29.99, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2024-04-21 15:20:00', '%Y-%m-%d %H:%i:%s'));

-- MAYO 2024
INSERT INTO payment (student_id, course_id, amount, status, payment_method, payment_date) VALUES
(11, 13, 160.00, 'COMPLETADO', 'YAPE', STR_TO_DATE('2024-05-05 09:40:00', '%Y-%m-%d %H:%i:%s')),
(12, 1, 19.99, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2024-05-10 12:15:00', '%Y-%m-%d %H:%i:%s')),
(13, 7, 200.00, 'PENDIENTE', 'YAPE', STR_TO_DATE('2024-05-15 14:50:00', '%Y-%m-%d %H:%i:%s')),
(14, 14, 400.00, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2024-05-20 10:05:00', '%Y-%m-%d %H:%i:%s')),
(15, 9, 120.00, 'COMPLETADO', 'YAPE', STR_TO_DATE('2024-05-25 13:30:00', '%Y-%m-%d %H:%i:%s'));

-- JUNIO 2024
INSERT INTO payment (student_id, course_id, amount, status, payment_method, payment_date) VALUES
(1, 15, 90.00, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2024-06-03 08:45:00', '%Y-%m-%d %H:%i:%s')),
(2, 6, 49.99, 'COMPLETADO', 'YAPE', STR_TO_DATE('2024-06-08 12:20:00', '%Y-%m-%d %H:%i:%s')),
(3, 16, 110.00, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2024-06-13 15:35:00', '%Y-%m-%d %H:%i:%s')),
(4, 17, 80.00, 'RECHAZADO', 'YAPE', STR_TO_DATE('2024-06-18 11:10:00', '%Y-%m-%d %H:%i:%s')),
(5, 18, 70.00, 'COMPLETADO', 'TARJETA_CREDITO', STR_TO_DATE('2024-06-23 14:25:00', '%Y-%m-%d %H:%i:%s')),
(6, 19, 220.00, 'PENDIENTE', 'YAPE', STR_TO_DATE('2024-06-28 16:50:00', '%Y-%m-%d %H:%i:%s'));