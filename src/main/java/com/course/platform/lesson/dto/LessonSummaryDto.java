package com.course.platform.lesson.dto;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class LessonSummaryDto {
    private Integer id;
    private String title;
    private String content;
}
