package com.course.platform.enrollment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.course.platform.enrollment.dto.EnrollmentCreateOrUpdateDto;
import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/enrollments")
@RequiredArgsConstructor
public class EnrollmentController {

	@Autowired
    private final EnrollmentService enrollmentService;
    

    @GetMapping
    public ResponseEntity<List<Enrollment>> list() {
        List<Enrollment> enrollments = enrollmentService.list();
        if (enrollments.isEmpty()) {
            return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
        }
        return ResponseEntity.ok(enrollments);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Enrollment> get(@PathVariable Integer id) {
        Enrollment enrollment = enrollmentService.search(id); // si no existe lanza excepción
        return ResponseEntity.ok(enrollment);
    }

    @PostMapping
    public ResponseEntity<Enrollment> create(@RequestBody EnrollmentCreateOrUpdateDto enrollmentCreateDto) {
        Enrollment created = enrollmentService.create(enrollmentCreateDto);
        return ResponseEntity.status(HttpStatus.CREATED).body(created);
    }

    @PutMapping("/{id}")
    public ResponseEntity<Enrollment> update(
            @PathVariable Integer id,
            @RequestBody EnrollmentCreateOrUpdateDto enrollmentDetails) {

        Enrollment updated = enrollmentService.update(id, enrollmentDetails);
        return ResponseEntity.ok(updated);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> delete(@PathVariable Integer id) {
        enrollmentService.delete(id);
        return ResponseEntity.noContent().build();
    }
}
