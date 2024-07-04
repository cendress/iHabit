//
//  AddHabit.swift
//  iHabit
//
//  Created by Christopher Endress on 7/4/24.
//

import SwiftUI

struct AddHabit: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationStack {
            Form {
                
            }
            .navigationTitle("Add Habit")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Save") {
                        // save habit and dismiss view
                    }
                }
                
                ToolbarItem(placement: .topBarLeading) {
                    Button("Cancel") {
                        dismiss()
                    }
                }
            }
        }
    }
}

#Preview {
    AddHabit()
}
