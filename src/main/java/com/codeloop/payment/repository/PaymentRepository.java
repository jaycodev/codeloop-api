package com.codeloop.payment.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.codeloop.payment.dto.PaymentListDto;
import com.codeloop.payment.model.Payment;

public interface PaymentRepository extends JpaRepository<Payment, Integer> {
    @Query("""
        SELECT new com.codeloop.payment.dto.PaymentListDto(
            p.paymentId,
            s.name,
            c.title,
            p.amount,
            p.status,
            p.paymentDate,
            p.paymentMethod
        )
        FROM Payment p
        JOIN p.student s
        JOIN p.course c
        ORDER BY p.paymentId DESC
    """)
    List<PaymentListDto> findList();
}
