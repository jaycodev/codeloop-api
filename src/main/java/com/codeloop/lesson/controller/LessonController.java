package com.codeloop.lesson.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.codeloop.lesson.dto.CreateLessonDto;
import com.codeloop.lesson.dto.LessonDetailDto;
import com.codeloop.lesson.dto.LessonListDto;
import com.codeloop.lesson.dto.UpdateLessonDto;
import com.codeloop.lesson.service.LessonService;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/lessons")
@RequiredArgsConstructor
public class LessonController {

    private final LessonService lessonService;

    @GetMapping
    public ResponseEntity<List<LessonListDto>> list() {
        List<LessonListDto> lessons = lessonService.getList();
        if (lessons.isEmpty()) {
            return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
        }
        return ResponseEntity.ok(lessons);
    }

    @GetMapping("/course/{idCourse}")
    public ResponseEntity<List<LessonListDto>> listByCourse(@PathVariable Integer idCourse) {
        List<LessonListDto> lessons = lessonService.getListByCourse(idCourse);
        if (lessons.isEmpty()) {
            return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
        }
        return ResponseEntity.ok(lessons);
    }

    @GetMapping("/{id}")
    public ResponseEntity<LessonDetailDto> get(@PathVariable Integer id) {
        LessonDetailDto lesson = lessonService.getInfoById(id);
        return ResponseEntity.ok(lesson);
    }

    @PostMapping
    public ResponseEntity<LessonListDto> create(@RequestBody CreateLessonDto dto) {
        LessonListDto created = lessonService.create(dto);
        return ResponseEntity.status(HttpStatus.CREATED).body(created);
    }

    @PutMapping("/{id}")
    public ResponseEntity<LessonListDto> update(@PathVariable Integer id, @RequestBody UpdateLessonDto dto) {
        LessonListDto updated = lessonService.update(id, dto);
        return ResponseEntity.ok(updated);
    }
}
