//
//  DescriptionView.swift
//  iHabit
//
//  Created by Christopher Endress on 7/4/24.
//

import SwiftUI

struct DescriptionView: View {
    @Environment(\.dismiss) var dismiss
    @ObservedObject var habits: Habits
    @State private var completionAmount = 1
    var habit: Habit
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading) {
                Stepper("Completion Amount: \(completionAmount)", value: $completionAmount, in: 1...100)
                    .padding()
                
                Text(habit.description)
                    .padding()
                
                Spacer()
            
            }
            .navigationTitle(habit.title)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Done") {
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    DescriptionView(habits: Habits(), habit: Habit(title: "Sample Habit", description: "Sample Description", numberOfCompletions: 0))
}
