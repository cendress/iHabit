//
//  HabitRowView.swift
//  iHabit
//
//  Created by Christopher Endress on 7/4/24.
//

import SwiftUI

struct HabitRowView: View {
    var titleText: String
    var descriptionText: String
    var completionNumber: Int
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(titleText)
                .padding(.vertical, 0.5)
                .font(.headline)
            
            Text(descriptionText)
                .font(.subheadline)
            
            Text("Completion Amount: \(completionNumber)")
                .font(.subheadline)
        }
    }
}

#Preview {
    HabitRowView(titleText: "Ride Bike", descriptionText: "I want to ride a bike once a day.", completionNumber: 1)
}
