//
//  ContentView.swift
//  BetterRest
//
//  Created by Ihor Sukhachov on 07.11.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date.now
    var body: some View {
        Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
        DatePicker("Choose a date", selection: $wakeUp).labelsHidden()
    }
    func exampleDates() {
        // create a second Date instance set to one day in seconds from now
        let tomorrow = Date.now.addingTimeInterval(86400)

        // create a range from those two
        let range = Date.now...tomorrow
    }
}

#Preview {
    ContentView()
}
