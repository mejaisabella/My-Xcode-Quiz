//
//  QuizView.swift
//  Quiz App
//
//  Created by Meja Santos on 6/24/24.
//

import SwiftUI

struct QuizView: View {
        @State private var currentQuestionIndex = 0
        @State private var score = 0
        @State private var showResult = false
        
        let quiz = Quiz()

        var body: some View {
            VStack {
                if showResult {
                    ResultView(score: score, totalQuestions: quiz.questions.count)
                } else {
                    VStack {
                        Text(quiz.questions[currentQuestionIndex].questionText)
                            .font(.title)
                            .padding()

                        ForEach(0..<quiz.questions[currentQuestionIndex].answers.count, id: \.self) { index in
                            Button(action: {
                                answerTapped(index)
                            }) {
                                Text(quiz.questions[currentQuestionIndex].answers[index])
                                    .font(.title2)
                                    .padding()
                                    .background(Color.gray)
                                    .foregroundColor(.white)
                                    .cornerRadius(10)
                            }
                            .padding(5)
                        }
                    }
                    .navigationTitle("Question \(currentQuestionIndex + 1)")
                }
            }
        }

        func answerTapped(_ index: Int) {
            if index == quiz.questions[currentQuestionIndex].correctAnswerIndex {
                score += 1
            }
            if currentQuestionIndex + 1 < quiz.questions.count {
                currentQuestionIndex += 1
            } else {
                showResult = true
            }
        }
    }


#Preview {
    QuizView()
}
