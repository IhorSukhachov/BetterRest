//
//  ContentView.swift
//  BetterRest
//
//  Created by Ihor Sukhachov on 07.11.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    var body: some View {
        Stepper("\(sleepAmount) hours", value: $sleepAmount, in: 4...12)
    }
}

#Preview {
    ContentView()
}
