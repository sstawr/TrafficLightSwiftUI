//
//  ContentView.swift
//  TrafficLight
//
//  Created by Evgeni Glushko on 2.03.24.
//

import SwiftUI

struct ContentView: View {
    
    private enum CurrentLight {
        case red, yellow, green
    }
    
    private let currentLight = CurrentLight.red
    
    var body: some View {
        VStack {
            VStack {
                BulbView(color: .red, opacity: 0.3)
                BulbView(color: .yellow, opacity: 0.3)
                BulbView(color: .green, opacity: 0.3)
            }
            
            Spacer()
            
            Button(action: buttonAction) {
                Text("Run")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
            }
            .frame(width: 150, height: 50)
            .background(.blue)
            .clipShape(RoundedRectangle(cornerRadius: 25))
            .overlay(RoundedRectangle(cornerRadius: 25).stroke(Color.cyan, lineWidth: 4))
            
        }
        .padding()
    }
    
    private func buttonAction() {
        
    }
}

#Preview {
    ContentView()
}
