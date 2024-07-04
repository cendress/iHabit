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
    var habit: Habit
    
    var body: some View {
        NavigationStack {
            VStack {
                Text(habit.description)
                    .padding()
                
                Spacer()
            
            }
            .navigationTitle(habit.title)
        }
    }
}

#Preview {
    DescriptionView(habits: Habits(), habit: Habit(title: "Sample Habit", description: "Sample Description", numberOfCompletions: 0))
}
