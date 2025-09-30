package com.course.platform.question.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.course.platform.question.model.Question;
import com.course.platform.question.service.QuestionService;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/questions")
@RequiredArgsConstructor
public class QuestionController {

	@Autowired
    private final QuestionService questionService;

    @GetMapping
    public ResponseEntity<List<Question>> list() {
        List<Question> questions = questionService.list();
        if (questions.isEmpty()) {
            return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
        }
        return ResponseEntity.ok(questions);
    }

    @GetMapping("/{id}")
    public ResponseEntity<Question> findById(@PathVariable Integer id) {
        Question question = questionService.findById(id); // lanza EntityNotFoundException si no existe
        return ResponseEntity.ok(question);
    }

    @PostMapping
    public ResponseEntity<Question> create(@RequestBody Question q) {
        Question created = questionService.create(q);
        return ResponseEntity.status(HttpStatus.CREATED).body(created);
    }

    @PutMapping("/{id}")
    public ResponseEntity<Question> update(@PathVariable Integer id, @RequestBody Question q) {
        Question updated = questionService.update(id, q);
        return ResponseEntity.ok(updated);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> delete(@PathVariable Integer id) {
        questionService.delete(id);
        return ResponseEntity.noContent().build(); // 204 vacío en borrado exitoso
    }

    @GetMapping("/exam/{examId}")
    public ResponseEntity<List<Question>> byExam(@PathVariable Integer examId) {
        List<Question> questions = questionService.listByExam(examId);
        if (questions.isEmpty()) {
            return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
        }
        return ResponseEntity.ok(questions);
    }
}
