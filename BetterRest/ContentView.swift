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
                Text("Desired amount of sleep:")
                    .font(.headline)
               
                Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
                
                Text("Daily cofee intake")
                    .font(.headline)
                
                Stepper("\(coffeeAmount) cup(s)", value: $coffeeAmount, in: 1...20, step: 1)
                
                
            }
            .navigationTitle("Better Rest")
            .toolbar {
                Button("Calculate", action: calculateBedtime)
        }
        }
    }
 
    func calculateBedtime() {
        
    }
    }


#Preview {
    ContentView()
}
