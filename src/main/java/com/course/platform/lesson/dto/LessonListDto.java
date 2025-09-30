package com.course.platform.lesson.dto;

public record LessonListDto(
    Integer id,
    String title,
    String content,
    String videoUrl,
    String courseTitle,
    Integer orderNum,
    Integer durationMinutes
) {}