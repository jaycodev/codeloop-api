package com.codeloop.payment.dto;

import lombok.*;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class PaymentSummaryDto {
    private Integer id;
    private String studentName;
    private String courseTitle;
}
