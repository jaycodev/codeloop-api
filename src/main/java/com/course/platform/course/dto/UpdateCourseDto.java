package com.course.platform.course.dto;

import java.math.BigDecimal;

import lombok.Data;

@Data
public class UpdateCourseDto {
    private String title;
    private String description;
    private BigDecimal price;
    private Integer teacherId;
}
