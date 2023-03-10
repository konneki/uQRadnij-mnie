//
//  ContentView.swift
//  uQRadnij mnie
//
//  Created by Daniel Konnek on 10.03.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var hue: Double = 0
    @State private var animateGradient = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.red, .white]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .hueRotation(.degrees(hue))
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                CustomTabBar(hue: $hue.animation(.easeInOut(duration: 1.5)))
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
