//
//  ContentView.swift
//  iHabit
//
//  Created by Christopher Endress on 7/4/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var habits = Habits()
    @State private var isShowingSheet = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(habits.habits) { habit in
                    NavigationLink(destination: DescriptionView(habits: habits, habit: habit)) {
                        HabitRowView(titleText: habit.title, descriptionText: habit.description, completionNumber: habit.numberOfCompletions)
                    }
                }
                .onDelete(perform: deleteHabit)
            }
            .navigationTitle("iHabit")
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        isShowingSheet.toggle()
                    } label: {
                        Image(systemName: "plus")
                    }
                }
            }
            .sheet(isPresented: $isShowingSheet) {
                AddHabitView(habits: habits)
            }
        }
    }
    
    private func deleteHabit(at offsets: IndexSet) {
        habits.habits.remove(atOffsets: offsets)
    }
}

#Preview {
    ContentView()
}
