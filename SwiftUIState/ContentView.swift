//
//  ContentView.swift
//  SwiftUIState
//
//  Created by Blaine Beltran on 12/7/20.
//  Copyright © 2020 Blaine Beltran. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var counterOne = 0
    @State private var counterTwo = 0
    @State private var counterThree = 0
    
    
    var body: some View {
        VStack {
            Text("\(counterOne + counterTwo + counterThree)")
                .font(.system(size: 220, weight: .bold, design: .rounded))
            HStack {
                CounterButton(counter: $counterOne, color: .red)
                CounterButton(counter: $counterTwo, color: .blue)
                CounterButton(counter: $counterThree, color: .orange)
            }
        }
    }
}

struct CounterButton: View {
    
    @Binding var counter: Int
    
    var color: Color
    
    var body: some View {
        Button(action: {
            // Add 1 to the counter when pressed
            self.counter += 1
        }) {
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(color)
                .overlay(
                    Text("\(counter)")
                        .font(.system(size: 50, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
            )
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
