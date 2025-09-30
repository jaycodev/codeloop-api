package com.codeloop.question.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.codeloop.question.model.Question;
import com.codeloop.question.repository.QuestionRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
@Transactional
public class QuestionService {

	private final QuestionRepository questionRepo;
	
	public List<Question> list() {
		return questionRepo.findAll();
	}
	
	public Question create(Question q) { 
		return questionRepo.save(q); 
	}

    public Question update(Integer id, Question question){
        Question q = findById(id);
        
        q.setStatement(question.getStatement());
        q.setOptionA(question.getOptionA());
        q.setOptionB(question.getOptionB());
        q.setOptionC(question.getOptionC());
        q.setOptionD(question.getOptionD());
        q.setCorrectAnswer(question.getCorrectAnswer());
        
        return questionRepo.save(q);
    }
    
    public Question findById(Integer id) { 
    	return questionRepo.findById(id).orElseThrow(); 
    }
    
    public void delete(Integer id) {
    	questionRepo.deleteById(id);
    }

    public List<Question> listByExam(Integer examId) { 
    	return questionRepo.findQuestionByExamId(examId); 
    }
}
