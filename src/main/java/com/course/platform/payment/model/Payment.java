package com.course.platform.payment.model;

import java.math.BigDecimal;
import java.time.LocalDateTime;

import com.course.platform.course.model.Course;
import com.course.platform.user.model.User;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "payment")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Payment {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer paymentId;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "student_id", nullable = false)
    private User student;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "course_id", nullable = false)
    private Course course;

    @Column(nullable = false, precision = 10, scale = 2)
    private BigDecimal amount;

    @Enumerated(EnumType.STRING)
    @Column(columnDefinition = "ENUM('PENDIENTE', 'COMPLETADO', 'RECHAZADO')")
    @Builder.Default
    private PaymentStatus status = PaymentStatus.PENDIENTE;

    private LocalDateTime paymentDate;

    @Enumerated(EnumType.STRING)
    @Column(columnDefinition = "ENUM('YAPE', 'TARJETA_CREDITO')")
    private PaymentMethod paymentMethod;

    @PrePersist
    protected void onCreate() {
        paymentDate = LocalDateTime.now();
    }
}
