package com.codeloop.lesson.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.codeloop.lesson.dto.LessonListDto;
import com.codeloop.lesson.model.Lesson;

public interface LessonRepository extends JpaRepository<Lesson, Integer> {
    @Query("""
        SELECT new com.codeloop.lesson.dto.LessonListDto(
            l.lessonId,
            l.title,
            l.content,
            l.videoUrl,
            c.title,
            l.orderNum,
            l.durationMinutes
        )
        FROM Lesson l
        JOIN l.course c
        ORDER BY l.lessonId DESC
    """)
    List<LessonListDto> findList();
    
    @Query("""
        SELECT new com.codeloop.lesson.dto.LessonListDto(
            l.lessonId,
            l.title,
            l.content,
            l.videoUrl,
            c.title,
            l.orderNum,
            l.durationMinutes
        )
        FROM Lesson l
        JOIN l.course c	
        WHERE c.courseId = :courseId
        ORDER BY l.orderNum ASC
    """)
    List<LessonListDto> findByCourseId(@Param("courseId") Integer courseId);

    long countByCourse_CourseId(Integer courseId);
}
