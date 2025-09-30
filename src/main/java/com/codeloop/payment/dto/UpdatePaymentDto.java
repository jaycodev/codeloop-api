package com.codeloop.payment.dto;

import java.math.BigDecimal;
import java.time.LocalDateTime;

import com.codeloop.payment.model.PaymentMethod;
import com.codeloop.payment.model.PaymentStatus;

import lombok.Data;

@Data
public class UpdatePaymentDto {
    private Integer studentId;
    private Integer courseId;
    private BigDecimal amount;
    private PaymentStatus status;
    private LocalDateTime paymentDate;
    private PaymentMethod paymentMethod;
}
