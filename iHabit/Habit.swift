//
//  Habit.swift
//  iHabit
//
//  Created by Christopher Endress on 7/4/24.
//

import Foundation

struct Habit: Identifiable, Codable, Equatable {
    var id = UUID()
    let title: String
    let description: String
    var numberOfCompletions: Int
}
