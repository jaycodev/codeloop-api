package com.codeloop.payment.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.codeloop.payment.dto.CreatePaymentDto;
import com.codeloop.payment.dto.PaymentDetailDto;
import com.codeloop.payment.dto.PaymentListDto;
import com.codeloop.payment.dto.StatsDto.PaymentStatsResponse;
import com.codeloop.payment.dto.UpdatePaymentDto;
import com.codeloop.payment.service.PaymentService;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/payments")
@RequiredArgsConstructor
public class PaymentController {

    private final PaymentService paymentService;

    @GetMapping
    public ResponseEntity<List<PaymentListDto>> list() {
        List<PaymentListDto> payments = paymentService.getList();
        if (payments.isEmpty()) {
            return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
        }
        return ResponseEntity.ok(payments);
    }

    @GetMapping("/{id}")
    public ResponseEntity<PaymentDetailDto> get(@PathVariable Integer id) {
        PaymentDetailDto payment = paymentService.getInfoById(id);
        return ResponseEntity.ok(payment);
    }

    @PostMapping
    public ResponseEntity<PaymentListDto> create(@RequestBody CreatePaymentDto dto) {
        PaymentListDto created = paymentService.create(dto);
        return ResponseEntity.status(HttpStatus.CREATED).body(created);
    }

    @PutMapping("/{id}")
    public ResponseEntity<PaymentListDto> update(@PathVariable Integer id, @RequestBody UpdatePaymentDto dto) {
        PaymentListDto updated = paymentService.update(id, dto);
        return ResponseEntity.ok(updated);
    }
    
    @GetMapping("/stats")
    public PaymentStatsResponse getPaymentsStats() {
        return paymentService.getPaymentStats();
    }
}
