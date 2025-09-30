package com.course.platform.course.dto;

import lombok.*;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class CourseSummaryDto {
    private Integer id;
    private String title;
    private String description;
}
