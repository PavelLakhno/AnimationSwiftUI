//
//  ContentView.swift
//  AnimationSwiftUI
//
//  Created by user on 26.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var moveOnCircle = false
    @State private var offsetY: CGFloat = -150
    @State private var degrees: Double = 0.5
    @State private var scale: Double = 0.2
    
    var body: some View {
        
        
        ZStack {
            Color.blue.ignoresSafeArea()
                
            RoundedRectangle(cornerRadius: 30, style: .circular)
                .fill(
                    LinearGradient(
                        colors: [.orange, .red],
                        startPoint: UnitPoint(x: 0.5, y: 0),
                        endPoint: UnitPoint(x: 0.5, y: 1)
                    )
                )
                .frame(width: 300, height: 300)
                .shadow(color: .white, radius: 2, x: 5, y: 5)
                .scaleEffect(scale)
                
            
            Image("SwiftImage")
                .resizable()
                .frame(width: 100, height: 100)
                .font(.largeTitle)
                .foregroundColor(.blue)
                .offset(y: moveOnCircle ? 0 : -300)
                .rotationEffect(.degrees(moveOnCircle ? 0 : -360))
                .scaleEffect(moveOnCircle ? 2 : 0.3)
                .animation(.linear(duration: 2), value: moveOnCircle)
            
        }
        .onAppear() {
            self.moveOnCircle.toggle()
            
            withAnimation(.easeIn(duration: 0.2).delay(1.7)) {
                self.degrees += 10
                self.scale = 0.85
            }
            
            withAnimation(.linear(duration: 0.2).delay(1.9)) {
                self.degrees = 0
                self.scale = 1
            }

        }

    }
}
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

   
