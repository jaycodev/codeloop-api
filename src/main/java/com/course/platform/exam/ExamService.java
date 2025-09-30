package com.course.platform.exam;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.course.platform.course.model.Course;
import com.course.platform.course.repository.CourseRepository;
import com.course.platform.exam.dto.ExamCreateDTO;
import com.course.platform.exam.dto.ExamUpdateDTO;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ExamService {

	@Autowired
	private final ExamRepository examRepository;

	@Autowired
	private final CourseRepository courseRepository;

	public List<Exam> listExam() {
		return examRepository.findAll();
	}

	public Exam search(Integer id) {
		return examRepository.findById(id).orElseThrow();
	}

	public void delete(Integer id) {
		examRepository.deleteById(id);
	}

	public List<Exam> listExamByCourse(Integer id) {
		return examRepository.findByCourseCourseId(id);
	}

	public Exam update(Integer id, ExamUpdateDTO exam) {

		Exam existingExam = search(id);

		existingExam.setTitle(exam.getTitle());

		return examRepository.save(existingExam);
	}

	public Exam create(ExamCreateDTO exam) {

		Exam examCreate = new Exam();

		examCreate.setTitle(exam.getTitle());

		Course existingCourse = courseRepository.findById(exam.getCourse_id()).orElseThrow();

		examCreate.setCourse(existingCourse);

		return examRepository.save(examCreate);
	}

}
