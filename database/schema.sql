DROP DATABASE IF EXISTS course_platform;
CREATE DATABASE course_platform;
USE course_platform;

CREATE TABLE `user` (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    role ENUM('ESTUDIANTE', 'PROFESOR', 'ADMIN') NOT NULL,
    status VARCHAR(20) DEFAULT 'ACTIVO',
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE course (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(150) NOT NULL,
    description TEXT,
    teacher_id INT NOT NULL,
    price DECIMAL(10, 2) DEFAULT 0.00,
    image_url VARCHAR(500),
    language VARCHAR(50) DEFAULT 'Español',
    level ENUM('Básico', 'Intermedio', 'Avanzado') DEFAULT 'Básico',
    duration_hours INT DEFAULT 0,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_course_teacher FOREIGN KEY (teacher_id) REFERENCES `user`(user_id)
);

CREATE TABLE lesson (
    lesson_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    content TEXT,
    video_url TEXT,
    course_id INT NOT NULL,
    order_num INT DEFAULT 0,
    duration_minutes INT DEFAULT 0,
    CONSTRAINT fk_lesson_course FOREIGN KEY (course_id) REFERENCES course(course_id)
);

CREATE TABLE enrollment (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    enrollment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    progress DECIMAL(5, 2) DEFAULT 0.00,
    status VARCHAR(20) DEFAULT 'ACTIVO',
    CONSTRAINT uq_enrollment_student_course UNIQUE (student_id, course_id),
    CONSTRAINT fk_enrollment_student FOREIGN KEY (student_id) REFERENCES `user`(user_id),
    CONSTRAINT fk_enrollment_course FOREIGN KEY (course_id) REFERENCES course(course_id)
);

CREATE TABLE exam (
    exam_id INT AUTO_INCREMENT PRIMARY KEY,
    course_id INT NOT NULL,
    title VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_exam_course FOREIGN KEY (course_id) REFERENCES course(course_id)
);

CREATE TABLE question (
    question_id INT AUTO_INCREMENT PRIMARY KEY,
    exam_id INT NOT NULL,
    statement TEXT NOT NULL,
    option_a VARCHAR(255),
    option_b VARCHAR(255),
    option_c VARCHAR(255),
    option_d VARCHAR(255),
    correct_answer ENUM('A', 'B', 'C', 'D'),
    CONSTRAINT fk_question_exam FOREIGN KEY (exam_id) REFERENCES exam(exam_id) ON DELETE CASCADE
);

CREATE TABLE answer (
    answer_id INT AUTO_INCREMENT PRIMARY KEY,
    question_id INT NOT NULL,
    student_id INT NOT NULL,
    answer ENUM('A', 'B', 'C', 'D'),
    is_correct BOOLEAN,
    CONSTRAINT fk_answer_question FOREIGN KEY (question_id) REFERENCES question(question_id) ON DELETE CASCADE,
    CONSTRAINT fk_answer_student FOREIGN KEY (student_id) REFERENCES `user`(user_id)
);

CREATE TABLE payment (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    amount DECIMAL(10, 2) NOT NULL,
    status ENUM('PENDIENTE', 'COMPLETADO', 'RECHAZADO') DEFAULT 'PENDIENTE',
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    payment_method ENUM('YAPE', 'TARJETA_CREDITO'),
    CONSTRAINT fk_payment_student FOREIGN KEY (student_id) REFERENCES `user`(user_id),
    CONSTRAINT fk_payment_course FOREIGN KEY (course_id) REFERENCES course(course_id)
);