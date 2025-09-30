package com.codeloop.answer.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.codeloop.answer.dto.AnswerDto;
import com.codeloop.answer.model.Answer;
import com.codeloop.answer.repository.AnswerRepository;
import com.codeloop.question.model.Question;
import com.codeloop.question.repository.QuestionRepository;
import com.codeloop.user.model.User;
import com.codeloop.user.repository.UserRepository;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
@Transactional
public class AnswerService {

    private final AnswerRepository answerRepo;
    private final QuestionRepository questionRepo;
    private final UserRepository userRepo;

    public Answer submit(Answer a) {
        Question q = questionRepo.findById(a.getQuestionId()).orElseThrow();

        boolean answerCorrect = a.getAnswer() != null && a.getAnswer() == q.getCorrectAnswer();
        a.setIsCorrect(answerCorrect);

        return answerRepo.save(a);
    }

    private AnswerDto toDTO(Answer a) {
        User student = userRepo.findById(a.getStudentId()).orElse(null);
        return AnswerDto.builder()
                .answerId(a.getAnswerId())
                .questionId(a.getQuestionId())
                .studentId(a.getStudentId())
                .studentName(student != null ? student.getName() : "")
                .answer(a.getAnswer().name())
                .isCorrect(a.getIsCorrect())
                .build();
    }

    public List<AnswerDto> list() {
        return answerRepo.findAll().stream()
                .map(this::toDTO)
                .toList();
    }

    public List<AnswerDto> findByQuestion(Integer questionId) {
        return answerRepo.findAnswerByQuestionId(questionId).stream()
                .map(this::toDTO)
                .toList();
    }

    // public List<Answer> findByExamAndStudent(Integer examId, Integer studentId){
    // return answerRepo.findByExamIdAndStudentId(examId, studentId);
    // }
}
