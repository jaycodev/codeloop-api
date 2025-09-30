package com.course.platform.question.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.course.platform.question.model.Question;

public interface QuestionRepository extends JpaRepository<Question, Integer>{
	List<Question> findQuestionByExamId(Integer examId);
}
