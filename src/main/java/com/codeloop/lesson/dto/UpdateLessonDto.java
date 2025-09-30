package com.codeloop.lesson.dto;

import lombok.Data;

@Data
public class UpdateLessonDto {
    private String title;
    private String content;
    private String videoUrl;
    private Integer courseId;
    private Integer orderNum;
}
