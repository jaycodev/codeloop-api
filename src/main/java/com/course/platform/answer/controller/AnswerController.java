package com.course.platform.answer.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.course.platform.answer.dto.AnswerDto;
import com.course.platform.answer.model.Answer;
import com.course.platform.answer.service.AnswerService;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/answers")
@RequiredArgsConstructor
public class AnswerController {

	@Autowired
    private final AnswerService answerService;

    @PostMapping
    public ResponseEntity<Answer> submit(@RequestBody Answer a) {
        Answer submitted = answerService.submit(a);
        return ResponseEntity.status(HttpStatus.CREATED).body(submitted);
    }
    
    @GetMapping
    public ResponseEntity<List<AnswerDto>> list() {
        List<AnswerDto> answers = answerService.list();
        if (answers.isEmpty()) {
            return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
        }
        return ResponseEntity.ok(answers);
    }

    @GetMapping("/question/{questionId}")
    public ResponseEntity<List<AnswerDto>> findByQuestion(@PathVariable Integer questionId) {
        List<AnswerDto> answers = answerService.findByQuestion(questionId);
        if (answers.isEmpty()) {
            return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
        }
        return ResponseEntity.ok(answers);
    }
}
