//
//  ContentView.swift
//  BetterRest
//
//  Created by Ihor Sukhachov on 07.11.2025.
//

import SwiftUI

struct ContentView: View {
    
    @State private var coffeeAmount = 1
    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date.now
    var body: some View {
        NavigationStack {
            VStack {
                Text("When do you want to wake up?").font(.headline)
                DatePicker("Please enter time:", selection: $wakeUp, displayedComponents: .hourAndMinute).labelsHidden()
            }
        }
    }
 
    }


#Preview {
    ContentView()
}
