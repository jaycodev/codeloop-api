package com.codeloop.answer.dto;

import lombok.Builder;
import lombok.Data;

@Data
@Builder
public class AnswerDto {
    private Integer answerId;
    private Integer questionId;
    private Integer studentId;
    private String studentName;
    private String answer;
    private Boolean isCorrect;
}
