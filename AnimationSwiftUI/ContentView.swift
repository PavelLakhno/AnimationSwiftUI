//
//  ContentView.swift
//  AnimationSwiftUI
//
//  Created by user on 26.12.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var moveByCircle = false
    @State private var offsetY: CGFloat = -150
    @State private var degrees: Double = 0.5
    @State private var scale: Double = 0
    @State private var hatOffsetY: CGFloat = -UIScreen.main.bounds.maxY
    
    var body: some View {
        
        ZStack {
            Color.blue.ignoresSafeArea()
                
            RoundedRectangle(cornerRadius: 30)
                .fill(
                    LinearGradient(
                        colors: [.orange, .red],
                        startPoint: UnitPoint(x: 0.5, y: 0),
                        endPoint: UnitPoint(x: 0.5, y: 1)
                    )
                )
                .frame(width: 200, height: 200)
                .shadow(color: Color.white.opacity(0.5), radius: 2, x: 5, y: 5)
                .scaleEffect(scale)
                .rotationEffect(.degrees(degrees))
            
            Image("SwiftImage")
                .resizable()
                .frame(width: 100, height: 100)
                .font(.largeTitle)
                .foregroundColor(.blue)
                .offset(y: moveByCircle ? 0 : -300)
                .rotationEffect(.degrees(moveByCircle ? 0 : -360))
                .scaleEffect(moveByCircle ? 1.5 : 0.3)
                .animation(.linear(duration: 2), value: moveByCircle)
            
            HStack {
                Spacer()
                Image("SantaHat")
                    .resizable()
                    .frame(width: 200, height: 150)
                    .rotationEffect(.degrees(45))
                    .offset(y: hatOffsetY)
            }
            .padding()
        }
        
        .onAppear() {
            moveByCircle.toggle()
            
            withAnimation(.linear(duration: 1).delay(1.5)) {
                degrees += 180
                scale = 0.5
            }

            withAnimation(.linear(duration: 0.5).delay(1.5)) {
                degrees = 0
                scale = 1
            }
            
            withAnimation(.linear(duration: 0.5).delay(2)) {
                hatOffsetY = -60
            }
        }
    }
}
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

   
