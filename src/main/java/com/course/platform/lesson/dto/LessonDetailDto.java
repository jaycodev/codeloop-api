package com.course.platform.lesson.dto;

import com.course.platform.course.dto.CourseSummaryDto;

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
