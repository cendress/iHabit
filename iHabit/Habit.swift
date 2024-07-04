//
//  Habit.swift
//  iHabit
//
//  Created by Christopher Endress on 7/4/24.
//

import SwiftUI

@Observable
class Habit {
    let title: String
    let description: String
    let numberOfCompletions: Int
    
    init(title: String, description: String, numberOfCompletions: Int) {
        self.title = title
        self.description = description
        self.numberOfCompletions = numberOfCompletions
    }
}
