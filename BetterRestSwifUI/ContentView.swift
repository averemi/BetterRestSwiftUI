//
//  ContentView.swift
//  BetterRestSwifUI
//
//  Created by Anastasiia Veremiichyk on 08/09/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount = 8.0
    @State private var wakeUp = Date.now

    var body: some View {
        VStack {
            Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
            DatePicker("Please enter a time", selection: $wakeUp, in: Date.now..., displayedComponents: .hourAndMinute)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
