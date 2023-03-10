//
//  CustomTabBar.swift
//  uQRadnij mnie
//
//  Created by Daniel Konnek on 10.03.2023.
//

import SwiftUI

struct CustomTabBar: View {
    @Binding var hue: Double
    
    var body: some View {
        HStack {
            Button {
                hue = 0
            } label: {
                VStack (spacing: 5) {
                    Image(systemName: "1.circle")
                    Text("Red")
                }
            }
            .tint(.red)
            .frame(maxWidth: .infinity)
            
            Button {
                hue = 90
            } label: {
                VStack (spacing: 5) {
                    Image(systemName: "2.circle")
                    Text("Green")
                }
            }
            .tint(.green)
            .frame(maxWidth: .infinity)
            
            Button {
                hue = 180
            } label: {
                VStack (spacing: 5) {
                    Image(systemName: "3.circle")
                    Text("Blue")
                }
            }
            .tint(.blue)
            .frame(maxWidth: .infinity)
            
        }
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomTabBar(hue: .constant(45))
    }
}
