package com.codeloop.course.dto;

import java.math.BigDecimal;

import lombok.Data;

@Data
public class CreateCourseDto {
    private String title;
    private String description;
    private BigDecimal price;
    private Integer teacherId;
}
