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
                    HabitRowView(titleText: habit.title, descriptionText: habit.description)
                }
            }
            .navigationTitle("iHabit")
            .toolbar {
                Button {
                    isShowingSheet.toggle()
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $isShowingSheet) {
                AddHabitView(habits: habits)
            }
        }
    }
}

#Preview {
    ContentView()
}
