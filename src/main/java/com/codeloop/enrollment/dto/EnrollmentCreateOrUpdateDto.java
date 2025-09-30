package com.codeloop.enrollment.dto;

import java.math.BigDecimal;
import java.time.LocalDateTime;

import lombok.Data;

@Data
public class EnrollmentCreateOrUpdateDto {
	
	private Integer idStudent;

	private Integer idCourse;

	private LocalDateTime enrollmentDate;

	private BigDecimal progress;

	private String status;
}
