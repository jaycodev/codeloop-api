package com.codeloop.lesson.dto;

import com.codeloop.course.dto.CourseSummaryDto;

import lombok.*;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class LessonDetailDto {
    private Integer id;
    private String title;
    private String content;
    private String videoUrl;
    private CourseSummaryDto course;
    private Integer orderNum;
}
