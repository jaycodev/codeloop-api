package com.codeloop.answer.model;

import com.codeloop.shared.model.AnswerOption;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Table(name = "answer")
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class Answer {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer answerId;

	@Column(nullable = false)
	private Integer questionId;

	@Column(nullable = false)
	private Integer studentId;

	@Enumerated(EnumType.STRING)
	@Column(columnDefinition = "ENUM('A', 'B', 'C', 'D')")
	private AnswerOption answer;
  
	private Boolean isCorrect;
}
