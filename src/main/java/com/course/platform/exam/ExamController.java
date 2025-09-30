package com.course.platform.exam;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.course.platform.exam.dto.ExamCreateDTO;
import com.course.platform.exam.dto.ExamUpdateDTO;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/exams")
@RequiredArgsConstructor
public class ExamController {

	@Autowired
    private final ExamService examService;

    @GetMapping
    public ResponseEntity<List<Exam>> list() {
        List<Exam> exams = examService.listExam();
        if (exams.isEmpty()) {
            return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
        }
        return ResponseEntity.ok(exams);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Exam> get(@PathVariable Integer id) {
        Exam exam = examService.search(id); // lanza excepción si no existe
        return ResponseEntity.ok(exam);
    }

    @GetMapping("/course/{courseId}")
    public ResponseEntity<List<Exam>> listByCourse(@PathVariable("courseId") Integer courseId) {
        List<Exam> exams = examService.listExamByCourse(courseId);
        if (exams.isEmpty()) {
            return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
        }
        return ResponseEntity.ok(exams);
    }
    
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> delete(@PathVariable Integer id) {
        examService.delete(id);
        return ResponseEntity.noContent().build();
    }
    
    @PutMapping("/{id}")
    public ResponseEntity<Exam> update(@PathVariable Integer id, @RequestBody ExamUpdateDTO exam) {
        Exam updatedExam = examService.update(id, exam);
        return ResponseEntity.ok(updatedExam);
    }
    
    @PostMapping
    public ResponseEntity<Exam> create( @RequestBody ExamCreateDTO exam) {
        Exam updatedExam = examService.create(exam);
        return ResponseEntity.ok(updatedExam);
    }
}
