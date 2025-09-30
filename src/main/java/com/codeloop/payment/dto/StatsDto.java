package com.codeloop.payment.dto;
import java.math.BigDecimal;
import java.util.List;


public class StatsDto {

	   public record MonthlyPaymentDto(String month, Double totalAmount) {}

	    public record PaymentStatsResponse(List<MonthlyPaymentDto> monthlyPayments, BigDecimal totalRevenue) {}

}
