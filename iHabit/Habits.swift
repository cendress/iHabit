//
//  Habits.swift
//  iHabit
//
//  Created by Christopher Endress on 7/4/24.
//

import SwiftUI

class Habits: ObservableObject {
    @Published var habits = [Habit]() {
        didSet {
            saveHabits()
        }
    }
    
    init() {
        loadHabits()
    }
    
    func addHabit(_ habit: Habit) {
        habits.append(habit)
    }
    
    private func saveHabits() {
        if let encoded = try? JSONEncoder().encode(habits) {
            UserDefaults.standard.setValue(encoded, forKey: "Habits")
        }
    }
    
    private func loadHabits() {
        if let savedHabits = UserDefaults.standard.object(forKey: "Habits") as? Data {
            if let decodedHabits = try? JSONDecoder().decode([Habit].self, from: savedHabits) {
                habits = decodedHabits
            }
        }
    }
}
