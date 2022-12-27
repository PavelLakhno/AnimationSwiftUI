//
//  GradientRectangles.swift
//  AnimationSwiftUI
//
//  Created by user on 27.12.2022.
//

import SwiftUI

struct GradientRectangles: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            
            Rectangle()
                .fill(
                    LinearGradient(
                        colors: [.orange, .red],
                        startPoint: UnitPoint(x: 0.5, y: 0),
                        endPoint: UnitPoint(x: 0.5, y: 1)
                    )
                )
                .frame(width: width * 0.7, height: height * 0.7)
            
            
            
        }
    }
}


struct GradientRectangles_Previews: PreviewProvider {
    static var previews: some View {
        GradientRectangles()
    }
}
