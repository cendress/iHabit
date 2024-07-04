//
//  Habits.swift
//  iHabit
//
//  Created by Christopher Endress on 7/4/24.
//

import SwiftUI

class Habits: ObservableObject {
    @Published var habits = [Habit]()
    
    func addHabit(_ habit: Habit) {
        habits.append(habit)
    }
}
