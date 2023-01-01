//
//  SwiftImage.swift
//  AnimationSwiftUI
//
//  Created by Павел Лахно on 27.12.2022.
//

import SwiftUI

struct SwiftImage: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()
        let startPoint = CGPoint(x: rect.maxX * 0.95, y: rect.maxY * 0.9)
        path.move(to: startPoint)

        path.addQuadCurve(to: CGPoint(x: rect.maxX * 0.9, y: rect.maxY * 0.65),
                          control: CGPoint(x: rect.maxX, y: rect.maxY * 0.7))
        
        path.addQuadCurve(to: CGPoint(x: rect.maxX * 0.6, y: rect.maxY * 0.05),
                          control: CGPoint(x: rect.maxX * 0.95, y: rect.maxY * 0.3))
        path.addQuadCurve(to: CGPoint(x: rect.maxX * 0.7, y: rect.maxY * 0.5),
                          control: CGPoint(x: rect.maxX * 0.7, y: rect.maxY * 0.3))
        
        path.addLine(to: CGPoint(x: rect.maxX * 0.2, y: rect.maxY * 0.1))
        path.addLine(to: CGPoint(x: rect.maxX * 0.4, y: rect.maxY * 0.4))
        
        path.addQuadCurve(to: CGPoint(x: rect.maxX * 0.1, y: rect.maxY * 0.2),
                          control: CGPoint(x: rect.maxX * 0.15, y: rect.maxY * 0.25))
        path.addQuadCurve(to: CGPoint(x: rect.maxX * 0.5, y: rect.maxY * 0.6),
                          control: CGPoint(x: rect.maxX * 0.2, y: rect.maxY * 0.3))

        path.addQuadCurve(to: CGPoint(x: rect.maxX * 0.02, y: rect.maxY * 0.6),
                          control: CGPoint(x: rect.maxX * 0.4, y: rect.maxY * 0.8))
        path.addCurve(to: startPoint,
                      control1: CGPoint(x: rect.maxX * 0.6, y: rect.maxY * 1.2),
                      control2: CGPoint(x: rect.maxX * 0.7, y: rect.maxY * 0.6))
        return path
    }
}

struct SwiftImage_Previews: PreviewProvider {
    static var previews: some View {
        SwiftImage()
    }
}
