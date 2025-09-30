package com.course.platform.course.service;

import java.math.BigDecimal;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.course.platform.course.dto.CreateCourseDto;
import com.course.platform.course.dto.UpdateCourseDto;
import com.course.platform.course.dto.CourseDetailDto;
import com.course.platform.course.dto.CourseListDto;
import com.course.platform.course.dto.CourseSummaryDto;
import com.course.platform.course.model.Course;
import com.course.platform.course.repository.CourseRepository;
import com.course.platform.lesson.repository.LessonRepository;
import com.course.platform.user.repository.UserRepository;
import com.course.platform.user.service.UserService;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityNotFoundException;
import jakarta.persistence.ParameterMode;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.StoredProcedureQuery;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class CourseService {

    @PersistenceContext
    private EntityManager em;

    private final CourseRepository courseRepository;
    private final UserRepository userRepository;
    private final LessonRepository lessonRepository;

    private final UserService userService;

    public List<CourseListDto> getList() {
        return courseRepository.findList();
    }

    public List<CourseSummaryDto> listCourseSummary() {
        return courseRepository.listCourseSummary();
    }

    public Optional<Course> findById(Integer courseId) {
        return courseRepository.findById(courseId);
    }

    public CourseDetailDto getInfoById(Integer courseId) {
        Course course = courseRepository.findById(courseId)
                .orElseThrow(() -> new EntityNotFoundException("Course not found with ID: " + courseId));

        long lessonCount = lessonRepository.countByCourse_CourseId(courseId);

        return CourseDetailDto.builder()
                .id(course.getCourseId())
                .title(course.getTitle())
                .description(course.getDescription())
                .teacher(userService.toSummaryDto(course.getTeacher()))
                .price(course.getPrice())
                .imageUrl(course.getImageUrl())
                .level(course.getLevel().name())
                .durationHours(course.getDurationHours())
                .lessonCount((int) lessonCount)
                .build();
    }

    @Transactional
    public CourseListDto create(CreateCourseDto dto) {
        Course course = new Course();

        if (dto.getTitle() == null || dto.getTitle().isBlank()) {
            throw new IllegalArgumentException("El título del curso es obligatorio");
        }
        course.setTitle(dto.getTitle());

        if (dto.getDescription() == null || dto.getDescription().isBlank()) {
            throw new IllegalArgumentException("La descripción del curso es obligatoria");
        }
        course.setDescription(dto.getDescription());

        if (dto.getPrice() == null || dto.getPrice().compareTo(BigDecimal.ZERO) < 0) {
            throw new IllegalArgumentException("El precio debe ser mayor o igual a 0");
        }
        course.setPrice(dto.getPrice());

        if (dto.getTeacherId() == null) {
            throw new IllegalArgumentException("El ID del profesor es obligatorio");
        }

        course.setTeacher(
                userRepository.findById(dto.getTeacherId())
                        .orElseThrow(
                                () -> new RuntimeException("Profesor no encontrado con ID: " + dto.getTeacherId())));

        Course saved = courseRepository.save(course);

        return toListDto(saved);
    }

    @Transactional
    public CourseListDto update(Integer courseId, UpdateCourseDto dto) {
        Course course = courseRepository.findById(courseId)
                .orElseThrow(() -> new RuntimeException("Curso no encontrado con ID: " + courseId));

        if (dto.getTitle() != null) {
            course.setTitle(dto.getTitle());
        }

        if (dto.getDescription() != null) {
            course.setDescription(dto.getDescription());
        }

        if (dto.getPrice() != null) {
            course.setPrice(dto.getPrice());
        }

        if (dto.getTeacherId() != null) {
            course.setTeacher(userRepository.findById(dto.getTeacherId())
                    .orElseThrow(() -> new RuntimeException("Profesor no encontrado")));
        }

        Course saved = courseRepository.save(course);

        return toListDto(saved);
    }

    public void delete(Integer courseId) {
        courseRepository.deleteById(courseId);
    }

    public CourseSummaryDto toSummaryDto(Course course) {
        return CourseSummaryDto.builder()
                .id(course.getCourseId())
                .title(course.getTitle())
                .description(course.getDescription())
                .build();
    }

    public static CourseListDto toListDto(Course course) {
        return new CourseListDto(
                course.getCourseId(),
                course.getTitle(),
                course.getDescription(),
                course.getPrice(),
                course.getTeacher().getName(),
                course.getImageUrl());
    }

    @Transactional
    public Map<String, Object> getCourseStats() {
        StoredProcedureQuery statsQuery = em.createStoredProcedureQuery("get_course_stats");
        statsQuery.registerStoredProcedureParameter("total_courses", Integer.class, ParameterMode.OUT);
        statsQuery.registerStoredProcedureParameter("courses_last_month", Integer.class, ParameterMode.OUT);
        statsQuery.execute();

        Integer totalCourses = (Integer) statsQuery.getOutputParameterValue("total_courses");
        Integer coursesLastMonth = (Integer) statsQuery.getOutputParameterValue("courses_last_month");

        StoredProcedureQuery lastCoursesQuery = em.createStoredProcedureQuery("get_last_courses");
        lastCoursesQuery.execute();
        @SuppressWarnings("unchecked")
        List<Object[]> lastCourses = lastCoursesQuery.getResultList();

        StoredProcedureQuery topCoursesQuery = em.createStoredProcedureQuery("get_top_courses");
        topCoursesQuery.execute();
        @SuppressWarnings("unchecked")
        List<Object[]> topCourses = topCoursesQuery.getResultList();

        Map<String, Object> result = new HashMap<>();
        result.put("totalCourses", totalCourses);
        result.put("coursesLastMonth", coursesLastMonth);
        result.put("lastCourses", lastCourses);
        result.put("topCourses", topCourses);

        return result;
    }
}
