//
//  ContentView.swift
//  iHabit
//
//  Created by Christopher Endress on 7/4/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isShowingSheet = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Hello")
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
                AddHabitView()
            }
        }
    }
}

#Preview {
    ContentView()
}
