package com.codeloop.payment.dto;

import java.math.BigDecimal;
import java.time.LocalDateTime;

import com.codeloop.course.dto.CourseSummaryDto;
import com.codeloop.user.dto.UserSummaryDto;

import lombok.*;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class PaymentDetailDto {
    private Integer id;
    private UserSummaryDto student;
    private CourseSummaryDto course;
    private BigDecimal amount;
    private String status;
    private LocalDateTime paymentDate;
    private String paymentMethod;
}
