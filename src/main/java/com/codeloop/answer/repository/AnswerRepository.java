package com.codeloop.answer.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.codeloop.answer.model.Answer;

public interface AnswerRepository extends JpaRepository<Answer, Integer>{
	
	List<Answer> findAnswerByQuestionId(Integer questionId);
}
