package com.codeloop.payment.dto;

import java.math.BigDecimal;
import java.time.LocalDateTime;

import com.codeloop.payment.model.PaymentMethod;
import com.codeloop.payment.model.PaymentStatus;

public record PaymentListDto(
    Integer id,
    String studentName,
    String courseTitle,
    BigDecimal amount,
    PaymentStatus status,
    LocalDateTime paymentDate,
    PaymentMethod paymentMethod
) {}
