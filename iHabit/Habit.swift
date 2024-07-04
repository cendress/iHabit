//
//  Habit.swift
//  iHabit
//
//  Created by Christopher Endress on 7/4/24.
//

import Foundation

struct Habit: Identifiable, Codable {
    var id = UUID()
    let title: String
    let description: String
    let numberOfCompletions: Int
}
