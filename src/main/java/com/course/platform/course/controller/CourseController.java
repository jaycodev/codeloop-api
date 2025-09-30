package com.course.platform.course.controller;

import java.util.List;
import java.util.Map;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.course.platform.course.dto.CreateCourseDto;
import com.course.platform.course.dto.UpdateCourseDto;
import com.course.platform.course.dto.CourseDetailDto;
import com.course.platform.course.dto.CourseListDto;
import com.course.platform.course.dto.CourseSummaryDto;
import com.course.platform.course.service.CourseService;

import org.springframework.http.HttpStatus;

import lombok.RequiredArgsConstructor;

@RestController
@RequestMapping("/courses")
@RequiredArgsConstructor
public class CourseController {

    private final CourseService courseService;

    @GetMapping
    public ResponseEntity<List<CourseListDto>> list() {
        List<CourseListDto> courses = courseService.getList();
        if (courses.isEmpty()) {
            return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
        }
        return ResponseEntity.ok(courses);
    }

    @GetMapping("/summary")
    public ResponseEntity<List<CourseSummaryDto>> comboBox() {
        List<CourseSummaryDto> coursesSumary = courseService.listCourseSummary();
        if (coursesSumary.isEmpty()) {
            return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
        }
        return ResponseEntity.ok(coursesSumary);
    }

    @GetMapping("/{id}")
    public ResponseEntity<CourseDetailDto> get(@PathVariable Integer id) {
        CourseDetailDto course = courseService.getInfoById(id);
        return ResponseEntity.ok(course);
    }

    @PostMapping
    public ResponseEntity<CourseListDto> create(@RequestBody CreateCourseDto dto) {
        CourseListDto created = courseService.create(dto);
        return ResponseEntity.status(HttpStatus.CREATED).body(created);
    }

    @PutMapping("/{id}")
    public ResponseEntity<CourseListDto> update(@PathVariable Integer id, @RequestBody UpdateCourseDto dto) {
        CourseListDto updated = courseService.update(id, dto);
        return ResponseEntity.ok(updated);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> delete(@PathVariable Integer id) {
        courseService.delete(id);
        return ResponseEntity.noContent().build();
    }
    
    @GetMapping("/stats")
    public Map<String, Object> getCourseStats() {
        return courseService.getCourseStats();
    }
}
