package com.codeloop.lesson.model;

import com.codeloop.course.model.Course;

import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "lesson")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Lesson {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer lessonId;

    @Column(nullable = false)
    private String title;

    @Column(columnDefinition = "TEXT")
    private String content;

    @Column(columnDefinition = "TEXT")
    private String videoUrl;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "course_id", nullable = false)
    private Course course;

    @Builder.Default
    private Integer orderNum = 0;

    @Builder.Default
    private Integer durationMinutes = 0;
}
