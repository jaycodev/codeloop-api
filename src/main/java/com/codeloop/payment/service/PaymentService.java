package com.codeloop.payment.service;

import java.math.BigDecimal;
import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.codeloop.course.model.Course;
import com.codeloop.course.repository.CourseRepository;
import com.codeloop.course.service.CourseService;
import com.codeloop.payment.dto.CreatePaymentDto;
import com.codeloop.payment.dto.PaymentDetailDto;
import com.codeloop.payment.dto.PaymentListDto;
import com.codeloop.payment.dto.PaymentSummaryDto;
import com.codeloop.payment.dto.StatsDto.MonthlyPaymentDto;
import com.codeloop.payment.dto.StatsDto.PaymentStatsResponse;
import com.codeloop.payment.dto.UpdatePaymentDto;
import com.codeloop.payment.model.Payment;
import com.codeloop.payment.repository.PaymentRepository;
import com.codeloop.user.model.User;
import com.codeloop.user.repository.UserRepository;
import com.codeloop.user.service.UserService;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityNotFoundException;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.StoredProcedureQuery;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class PaymentService {

        @PersistenceContext
        private EntityManager entityManager;

        private final PaymentRepository paymentRepository;
        private final UserRepository userRepository;
        private final CourseRepository courseRepository;

        private final UserService userService;
        private final CourseService courseService;

        public List<PaymentListDto> getList() {
                return paymentRepository.findList();
        }

        public Optional<Payment> findById(Integer paymentId) {
                return paymentRepository.findById(paymentId);
        }

        public PaymentDetailDto getInfoById(Integer paymentId) {
                Payment payment = paymentRepository.findById(paymentId)
                                .orElseThrow(() -> new EntityNotFoundException(
                                                "Payment not found with ID: " + paymentId));

                return PaymentDetailDto.builder()
                                .id(payment.getPaymentId())
                                .student(userService.toSummaryDto(payment.getStudent()))
                                .course(courseService.toSummaryDto(payment.getCourse()))
                                .amount(payment.getAmount())
                                .status(payment.getStatus().name())
                                .paymentDate(payment.getPaymentDate())
                                .paymentMethod(payment.getPaymentMethod().name())
                                .build();
        }

        @Transactional
        public PaymentListDto create(CreatePaymentDto dto) {
                User student = userRepository.findById(dto.getStudentId())
                                .orElseThrow(() -> new EntityNotFoundException(
                                                "User not found with ID: " + dto.getStudentId()));

                Course course = courseRepository.findById(dto.getCourseId())
                                .orElseThrow(() -> new EntityNotFoundException(
                                                "Course not found with ID: " + dto.getCourseId()));

                Payment payment = Payment.builder()
                                .student(student)
                                .course(course)
                                .amount(dto.getAmount())
                                .status(dto.getStatus())
                                .paymentDate(dto.getPaymentDate())
                                .paymentMethod(dto.getPaymentMethod())
                                .build();

                Payment saved = paymentRepository.save(payment);

                return toListDto(saved);
        }

        @Transactional
        public PaymentListDto update(Integer paymentId, UpdatePaymentDto dto) {
                Payment payment = paymentRepository.findById(paymentId)
                                .orElseThrow(() -> new EntityNotFoundException(
                                                "Payment not found with ID: " + paymentId));

                User student = userRepository.findById(dto.getStudentId())
                                .orElseThrow(() -> new EntityNotFoundException(
                                                "User not found with ID: " + dto.getStudentId()));

                Course course = courseRepository.findById(dto.getCourseId())
                                .orElseThrow(() -> new EntityNotFoundException(
                                                "Course not found with ID: " + dto.getCourseId()));

                payment.setStudent(student);
                payment.setCourse(course);
                payment.setAmount(dto.getAmount());
                payment.setStatus(dto.getStatus());
                payment.setPaymentDate(dto.getPaymentDate());
                payment.setPaymentMethod(dto.getPaymentMethod());

                Payment saved = paymentRepository.save(payment);

                return toListDto(saved);
        }

        public PaymentSummaryDto toSummaryDto(Payment payment) {
                return PaymentSummaryDto.builder()
                                .id(payment.getPaymentId())
                                .studentName(payment.getStudent().getName())
                                .courseTitle(payment.getCourse().getTitle())
                                .build();
        }

        private PaymentListDto toListDto(Payment payment) {
                return new PaymentListDto(
                                payment.getPaymentId(),
                                payment.getStudent().getName(),
                                payment.getCourse().getTitle(),
                                payment.getAmount(),
                                payment.getStatus(),
                                payment.getPaymentDate(),
                                payment.getPaymentMethod());
        }

        @Transactional
        public PaymentStatsResponse getPaymentStats() {
                StoredProcedureQuery revenueQuery = entityManager.createStoredProcedureQuery("get_payments_stats");
                revenueQuery.registerStoredProcedureParameter("total_revenue", BigDecimal.class,
                                jakarta.persistence.ParameterMode.OUT);
                revenueQuery.execute();
                BigDecimal totalRevenue = (BigDecimal) revenueQuery.getOutputParameterValue("total_revenue");

                StoredProcedureQuery monthlyQuery = entityManager.createStoredProcedureQuery("get_monthly_payments");
                monthlyQuery.execute();
                @SuppressWarnings("unchecked")
                List<Object[]> monthlyPayments = monthlyQuery.getResultList();

                List<MonthlyPaymentDto> monthlyDtos = monthlyPayments.stream()
                                .map(row -> new MonthlyPaymentDto(
                                                (String) row[0],
                                                ((Number) row[1]).doubleValue()))
                                .toList();

                return new PaymentStatsResponse(monthlyDtos, totalRevenue);
        }
}
