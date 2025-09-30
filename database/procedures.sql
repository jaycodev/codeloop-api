USE codeloop;

DELIMITER //

CREATE PROCEDURE get_course_stats(
    OUT total_courses INT,
    OUT courses_last_month INT
)
BEGIN
    SELECT COUNT(*) INTO total_courses FROM course;
    
    SELECT COUNT(*) INTO courses_last_month 
    FROM course 
    WHERE created_at >= DATE_SUB(NOW(), INTERVAL 1 MONTH);
END //

CREATE PROCEDURE get_last_courses()
BEGIN
    SELECT c.course_id,
           c.title,
           u.name AS teacher_name,
           c.image_url,
           c.created_at
    FROM course c
    JOIN `user` u ON c.teacher_id = u.user_id
    ORDER BY c.created_at DESC
    LIMIT 10;
END //

CREATE PROCEDURE get_top_courses()
BEGIN
    SELECT c.course_id,
           c.title,
           u.name AS teacher_name,
           c.image_url,
           COUNT(p.payment_id) AS total_purchases
    FROM payment p
    JOIN course c ON p.course_id = c.course_id
    JOIN `user` u ON c.teacher_id = u.user_id
    WHERE p.status = 'COMPLETADO'
    GROUP BY c.course_id, c.title, u.name, c.image_url
    ORDER BY total_purchases DESC
    LIMIT 5;
END //

CREATE PROCEDURE get_monthly_payments()
BEGIN
    SELECT DATE_FORMAT(payment_date, '%Y-%m') AS payment_month,
       SUM(amount) AS total_amount
    FROM payment
    WHERE status = 'COMPLETADO'
    GROUP BY DATE_FORMAT(payment_date, '%Y-%m')
    ORDER BY payment_month DESC
    LIMIT 6;
END //

CREATE PROCEDURE get_payments_stats(
    OUT total_revenue DECIMAL(10,2)
)
BEGIN
    SELECT COALESCE(SUM(amount), 0)
    INTO total_revenue
    FROM payment
    WHERE status = 'COMPLETADO';
END //

DELIMITER ;