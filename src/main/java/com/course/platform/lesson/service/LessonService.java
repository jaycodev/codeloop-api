package com.course.platform.lesson.service;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.course.platform.course.model.Course;
import com.course.platform.course.repository.CourseRepository;
import com.course.platform.course.service.CourseService;
import com.course.platform.lesson.dto.CreateLessonDto;
import com.course.platform.lesson.dto.LessonDetailDto;
import com.course.platform.lesson.dto.LessonListDto;
import com.course.platform.lesson.dto.LessonSummaryDto;
import com.course.platform.lesson.dto.UpdateLessonDto;
import com.course.platform.lesson.model.Lesson;
import com.course.platform.lesson.repository.LessonRepository;

import jakarta.persistence.EntityNotFoundException;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class LessonService {

    private final LessonRepository lessonRepository;
    private final CourseRepository courseRepository;

    private final CourseService courseService;

    public List<LessonListDto> getList() {
        return lessonRepository.findList();
    }

    public List<LessonListDto> getListByCourse(int idCourse) {
        return lessonRepository.findByCourseId(idCourse);
    }

    public Optional<Lesson> findById(Integer lessonId) {
        return lessonRepository.findById(lessonId);
    }

    public LessonDetailDto getInfoById(Integer lessonId) {
        Lesson lesson = lessonRepository.findById(lessonId)
                .orElseThrow(() -> new EntityNotFoundException("Lesson not found with ID: " + lessonId));

        return LessonDetailDto.builder()
                .id(lesson.getLessonId())
                .title(lesson.getTitle())
                .content(lesson.getContent())
                .videoUrl(lesson.getVideoUrl())
                .course(courseService.toSummaryDto(lesson.getCourse()))
                .orderNum(lesson.getOrderNum())
                .build();
    }

    @Transactional
    public LessonListDto create(CreateLessonDto dto) {
        Course course = courseRepository.findById(dto.getCourseId())
                .orElseThrow(() -> new EntityNotFoundException("Course not found with ID: " + dto.getCourseId()));

        Lesson lesson = new Lesson();
        lesson.setTitle(dto.getTitle());
        lesson.setContent(dto.getContent());
        lesson.setVideoUrl(dto.getVideoUrl());
        lesson.setCourse(course);
        lesson.setOrderNum(dto.getOrderNum());

        Lesson saved = lessonRepository.save(lesson);

        return toListDto(saved);
    }

    @Transactional
    public LessonListDto update(Integer lessonId, UpdateLessonDto dto) {
        Lesson lesson = lessonRepository.findById(lessonId)
                .orElseThrow(() -> new EntityNotFoundException("Lesson not found with ID: " + lessonId));

        Course course = courseRepository.findById(dto.getCourseId())
                .orElseThrow(() -> new EntityNotFoundException("Course not found with ID: " + dto.getCourseId()));

        lesson.setTitle(dto.getTitle());
        lesson.setContent(dto.getContent());
        lesson.setVideoUrl(dto.getVideoUrl());
        lesson.setCourse(course);
        lesson.setOrderNum(dto.getOrderNum());

        Lesson saved = lessonRepository.save(lesson);

        return toListDto(saved);
    }

    public LessonSummaryDto toSummaryDto(Lesson lesson) {
        return LessonSummaryDto.builder()
                .id(lesson.getLessonId())
                .title(lesson.getTitle())
                .content(lesson.getContent())
                .build();
    }

    private LessonListDto toListDto(Lesson lesson) {
        return new LessonListDto(
                lesson.getLessonId(),
                lesson.getTitle(),
                lesson.getContent(),
                lesson.getVideoUrl(),
                lesson.getCourse().getTitle(),
                lesson.getOrderNum(),
                lesson.getDurationMinutes());
    }
}
