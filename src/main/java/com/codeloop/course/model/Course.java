package com.codeloop.course.model;

import java.math.BigDecimal;
import java.time.LocalDateTime;

import com.codeloop.user.model.User;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.PrePersist;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "course")
@Builder
public class Course {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer courseId;

    private String title;

    private String description;

    @ManyToOne
    @JoinColumn(name = "teacher_id", nullable = false)
    private User teacher;

    private BigDecimal price;

    @Column(length = 500)
    private String imageUrl;

    @Column(length = 50)
    @Builder.Default
    private String language = "Español";

    @Enumerated(EnumType.STRING)
    @Column(columnDefinition = "ENUM('Básico', 'Intermedio', 'Avanzado')")
    @Builder.Default
    private CourseLevel level = CourseLevel.Básico;

    @Builder.Default
    private Integer durationHours = 0;

    private LocalDateTime createdAt;

    @PrePersist
    protected void onCreate() {
        createdAt = LocalDateTime.now();
    }
}
