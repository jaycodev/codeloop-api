package com.codeloop.course.dto;

import java.math.BigDecimal;

public record CourseListDto(
    Integer id,
    String title,
    String description,
    BigDecimal price,
    String teacherName,
    String imageUrl
) {}
