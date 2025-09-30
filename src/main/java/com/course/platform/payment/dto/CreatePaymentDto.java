package com.course.platform.payment.dto;

import java.math.BigDecimal;
import java.time.LocalDateTime;

import com.course.platform.payment.model.PaymentMethod;
import com.course.platform.payment.model.PaymentStatus;

import lombok.Data;

@Data
public class CreatePaymentDto {
    private Integer studentId;
    private Integer courseId;
    private BigDecimal amount;
    private PaymentStatus status;
    private LocalDateTime paymentDate;
    private PaymentMethod paymentMethod;
}
