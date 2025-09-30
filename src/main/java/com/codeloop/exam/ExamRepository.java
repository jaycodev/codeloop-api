package com.codeloop.exam;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface ExamRepository extends JpaRepository<Exam, Integer> {

	List<Exam> findByCourseCourseId(Integer courseId);

}
