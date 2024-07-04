//
//  DescriptionView.swift
//  iHabit
//
//  Created by Christopher Endress on 7/4/24.
//

import SwiftUI

struct DescriptionView: View {
    @State private var completionAmount = 1
    var habit: Habit
    
    var body: some View {
        NavigationStack {
            VStack {
                Text(habit.description)
                    .padding()
                
                Spacer()
                
                Stepper("Completion Amount: \(completionAmount)", value: $completionAmount, in: 1...100)
                    .padding()
                
                Spacer()
            
            }
            .navigationTitle(habit.title)
        }
    }
}

#Preview {
    DescriptionView(habit: Habit(title: "Sample Habit", description: "Sample Description", numberOfCompletions: 0))
}
