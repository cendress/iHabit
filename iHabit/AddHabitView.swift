//
//  AddHabit.swift
//  iHabit
//
//  Created by Christopher Endress on 7/4/24.
//

import SwiftUI

struct AddHabitView: View {
    @Environment(\.dismiss) var dismiss
    
    @State private var name = ""
    @State private var description = ""
    
    var body: some View {
        NavigationStack {
            Form {
                TextField("Enter a name", text: $name)
                
                TextField("Enter a description", text: $description)
            }
            .navigationTitle("Add New Habit")
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
    AddHabitView()
}
