//
//  RabbitView.swift
//  HW3.6
//
//  Created by Dmitry on 18.06.2021.
//

import SwiftUI

struct RabbitView: View {
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        GeometryReader { geo in
            let size = min(geo.size.width, geo.size.height)
            let middle = size / 2
            let sixLine = size * 0.6
            let sevenLine = size * 0.7
            let eightLine = size * 0.8
            let nearLine = size * 0.1
            let farLine = size * 0.9
            let maxSize = size * 1.2
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: nearLine))
                path.addLine(to: CGPoint(x: sixLine, y: nearLine * 2))
                path.addLine(to: CGPoint(x: sixLine, y: nearLine * 3))
                path.addLine(to: CGPoint(x: middle, y: sixLine))
                path.addLine(to: CGPoint(x: nearLine * 4, y: sevenLine))
                path.addLine(to: CGPoint(x: middle, y: eightLine))
                path.addLine(to: CGPoint(x: sixLine, y: eightLine))
                path.addLine(to: CGPoint(x: eightLine, y: farLine))
                path.addLine(to: CGPoint(x: farLine, y: farLine))
                path.addLine(to: CGPoint(x: sevenLine, y: eightLine))
                path.addLine(to: CGPoint(x: farLine, y: eightLine))
                path.addLine(to: CGPoint(x: sixLine, y: sevenLine))
                path.addLine(to: CGPoint(x: sevenLine, y: sixLine))
                path.addLine(to: CGPoint(x: farLine, y: sixLine))
                path.addLine(to: CGPoint(x: maxSize - nearLine, y: middle))
                path.addLine(to: CGPoint(x: maxSize, y: nearLine * 3))
                path.addLine(to: CGPoint(x: maxSize, y: nearLine * 2))
                path.addLine(to: CGPoint(x: maxSize + nearLine, y: nearLine * 3))
                path.addLine(to: CGPoint(x: maxSize, y: nearLine))
                path.addLine(to: CGPoint(x: sevenLine, y: nearLine))
                path.addLine(to: CGPoint(x: eightLine, y: nearLine * 2))
                path.addLine(to: CGPoint(x: farLine, y: nearLine * 2))
                path.addLine(to: CGPoint(x: eightLine, y: nearLine * 3))
                path.addLine(to: CGPoint(x: sixLine, y: nearLine))
                path.addLine(to: CGPoint(x: middle, y: nearLine))
                path.addLine(to: CGPoint(x: middle, y: sevenLine))
            }
            .fill(
                LinearGradient(
                    gradient: Gradient(colors: [.red, .yellow]),
                    startPoint: UnitPoint(x: 0, y: 1),
                    endPoint: UnitPoint(x: 1, y: 0))
            )
            .rotationEffect(.degrees(180))
            .offset(x: width * 0.35)
        }
        .frame(width: width, height: height)
    }
}

struct RabbitView_Previews: PreviewProvider {
    static var previews: some View {
        RabbitView(width: 200, height: 200)
    }
}
