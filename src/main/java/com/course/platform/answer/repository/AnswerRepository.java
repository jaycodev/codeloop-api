package com.course.platform.answer.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.course.platform.answer.model.Answer;

public interface AnswerRepository extends JpaRepository<Answer, Integer>{
	
	// Muestra la respuesta de cada estudiante de una pregunta
	List<Answer> findAnswerByQuestionId(Integer questionId);
	
	// @Query()
	// List<Answer> findAnswerByExamIdAndStudentId(Integer examId, Integer studentId);
}
