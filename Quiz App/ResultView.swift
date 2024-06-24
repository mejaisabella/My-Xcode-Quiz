//
//  ResultView.swift
//  Quiz App
//
//  Created by Meja Santos on 6/24/24.
//

import SwiftUI

struct ResultView: View {
    let score: Int
    let totalQuestions: Int

    var body: some View {
        VStack {
            Text("Quiz Completed")
                .font(.largeTitle)
                .padding()
            
            Text("Your score: \(score) / \(totalQuestions)")
                .font(.title)
                .padding()

            NavigationLink(destination: ContentView()) {
                Text("Restart Quiz")
                    .font(.title2)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()
        }
        .navigationTitle("Result")
    }
}

#Preview {
    NavigationView {
        ResultView(score: 8, totalQuestions: 10) // Provide actual integer values for testing
    }
}
