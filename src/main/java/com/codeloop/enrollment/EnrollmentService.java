package com.codeloop.enrollment;

import jakarta.persistence.EntityNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codeloop.course.repository.CourseRepository;
import com.codeloop.enrollment.dto.EnrollmentCreateOrUpdateDto;
import com.codeloop.user.repository.UserRepository;

import java.util.List;

@Service
public class EnrollmentService {

    @Autowired
    private EnrollmentRepository enrollmentRepository;
    
    @Autowired
    private UserRepository userRepository;
    
    @Autowired
    private CourseRepository courseRepository;

    public List<Enrollment> list() {
        return enrollmentRepository.findAll();
    }
    
    public Enrollment create(EnrollmentCreateOrUpdateDto dto) {
        
    	Enrollment enrollment = new Enrollment();
        
    	enrollment.setStudent(userRepository.findById(dto.getIdStudent())
                .orElseThrow(() -> new RuntimeException("Estudiante no encontrado")));
        
        enrollment.setCourse(courseRepository.findById(dto.getIdCourse())
                .orElseThrow(() -> new RuntimeException("Curso no encontrado")));
        
        enrollment.setEnrollmentDate(dto.getEnrollmentDate());
        enrollment.setProgress(dto.getProgress());
        enrollment.setStatus("ACTIVO");

        return enrollmentRepository.save(enrollment);
    }
    
    

    public Enrollment search(Integer id) {
        return enrollmentRepository.findById(id)
                .orElseThrow(() -> new EntityNotFoundException("Enrollment not found with id: " + id));
    }

    public Enrollment update(Integer id, EnrollmentCreateOrUpdateDto enrollmentDetails) {
        Enrollment existing = enrollmentRepository.findById(id)
                .orElseThrow(() -> new EntityNotFoundException("Enrollment not found with id: " + id));

        if (enrollmentDetails.getIdStudent() != null)
        existing.setStudent(userRepository.findById(enrollmentDetails.getIdStudent())
                .orElseThrow(() -> new RuntimeException("Estudiante no encontrado")));
        
        if (enrollmentDetails.getIdCourse() != null)
        existing.setCourse(courseRepository.findById(enrollmentDetails.getIdCourse())
                .orElseThrow(() -> new RuntimeException("Curso no encontrado")));
            
        if (enrollmentDetails.getEnrollmentDate() != null) {
            existing.setEnrollmentDate(enrollmentDetails.getEnrollmentDate());
        }
        if (enrollmentDetails.getProgress() != null) {
            existing.setProgress(enrollmentDetails.getProgress());
        }
        if (enrollmentDetails.getStatus() != null) {
            existing.setStatus(enrollmentDetails.getStatus());
        }

        return enrollmentRepository.save(existing);
    }

    public void delete(Integer id) {
        if (!enrollmentRepository.existsById(id)) {
            throw new EntityNotFoundException("Enrollment not found with id: " + id);
        }
        enrollmentRepository.deleteById(id);
    }
}
