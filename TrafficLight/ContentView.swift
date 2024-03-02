//
//  ContentView.swift
//  TrafficLight
//
//  Created by Evgeni Glushko on 2.03.24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var buttonText = "START"
    @State private var buttonPressed = false
    
    private enum CurrentLight {
        case red, yellow, green
    }
    
    @State private var currentLight = CurrentLight.red
    
    private let lightIsOn = 1.0
    private let lightIsOff = 0.3
    
    @State private var redLight = 0.3
    @State private var yellowLight = 0.3
    @State private var greenLight = 0.3
    
    var body: some View {
        VStack {
            VStack {
                BulbView(color: .red, opacity: redLight)
                BulbView(color: .yellow, opacity: yellowLight)
                BulbView(color: .green, opacity: greenLight)
            }
            
            Spacer()
            
            Button(action: buttonAction) {
                Text(buttonText)
                    .foregroundStyle(.white)
                    .font(.largeTitle)
            }
            .frame(width: 150, height: 50)
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.cyan, lineWidth: 4))
            
        }
        .padding()
    }
    
    private func buttonAction() {
        if !buttonPressed {
            buttonText = "NEXT"
            buttonPressed.toggle()
        }
        
        switch currentLight {
        case .red:
            greenLight = lightIsOff
            redLight = lightIsOn
            currentLight = .yellow
        case .yellow:
            yellowLight = lightIsOn
            redLight = lightIsOff
            currentLight = .green
        case .green:
            greenLight = lightIsOn
            yellowLight = lightIsOff
            currentLight = .red
        }
    }
}

#Preview {
    ContentView()
}
