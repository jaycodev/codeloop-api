package com.course.platform.payment.dto;

import java.math.BigDecimal;
import java.time.LocalDateTime;

import com.course.platform.payment.model.PaymentMethod;
import com.course.platform.payment.model.PaymentStatus;

public record PaymentListDto(
    Integer id,
    String studentName,
    String courseTitle,
    BigDecimal amount,
    PaymentStatus status,
    LocalDateTime paymentDate,
    PaymentMethod paymentMethod
) {}
