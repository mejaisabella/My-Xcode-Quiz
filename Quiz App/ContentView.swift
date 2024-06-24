//
//  ContentView.swift
//  Quiz App
//
//  Created by Meja Santos on 6/24/24.
//


    import SwiftUI

    struct ContentView: View {
        @State private var showQuiz = false

        var body: some View {
            NavigationView {
                VStack {
                    Text("Xcode Quiz")
                        .font(.largeTitle)
                        .padding()
                    Text("Take this quiz to test your Xcode knowledge")

                    Button(action: {
                        showQuiz = true
                    }) {
                        Text("Start Quiz")
                            .font(.title2)
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding()
                    .background(
                        NavigationLink(destination: QuizView(), isActive: $showQuiz) {
                            EmptyView()
                        }
                    )
                }
            }
        }
    }



#Preview {
    ContentView()
}
