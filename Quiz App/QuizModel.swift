//
//  QuizModel.swift
//  Quiz App
//
//  Created by Meja Santos on 6/24/24.
//

import Foundation

struct Question: Identifiable {
    let id = UUID()
    let questionText: String
    let answers: [String]
    let correctAnswerIndex: Int
}

struct Quiz {
    var questions: [Question] = [
        Question(questionText: "What is Xcode primarily used for?",
                 answers: ["Mobile app development", "Web development", "Graphic Design", "Database management"],
                 correctAnswerIndex: 0),
        Question(questionText: "Which programming language was introduced by Apple in 2014 for use with Xcode?",
                 answers: ["Java", "Swift", "C++", "Ruby"],
                 correctAnswerIndex: 1),
        Question(questionText: "How do you declare an optional variable in Swift?",
                 answers: ["var name: String?", "var name: Optional<String>", "Both A and B"],
                 correctAnswerIndex: 2),
        Question(questionText: "Which of the following is the correct way to declare a constant in Swift?",
                 answers: ["let pi = 3.14", "var pi = 3.14", "const pi = 3.14", "define pi = 3.14"],
                 correctAnswerIndex: 0),
        Question(questionText: "What keyword is used to declare a function in Swift?",
                 answers: ["func", "function", "def", "method"],
                 correctAnswerIndex: 0)
    ]
}

