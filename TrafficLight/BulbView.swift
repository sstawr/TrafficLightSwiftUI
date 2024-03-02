//
//  BulbView.swift
//  TrafficLight
//
//  Created by Evgeni Glushko on 2.03.24.
//

import SwiftUI

struct BulbView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .opacity(opacity)
            .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            .overlay(Circle().stroke(Color.cyan, lineWidth: 4))
            .padding(5)
    }
}

#Preview {
    BulbView(color: .red, opacity: 0.3)
}
