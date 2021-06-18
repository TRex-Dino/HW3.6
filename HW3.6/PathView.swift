//
//  PathView.swift
//  HW3.6
//
//  Created by Dmitry on 17.06.2021.
//

import SwiftUI

struct PathView: View {
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        GeometryReader { geo in
            let size = min(geo.size.width, geo.size.height)
            let middle = size / 2
            let nearLine = size * 0.1
            let farLine = size * 0.9
            
            Path { path in
                path.move(to: CGPoint(x: middle + nearLine, y: nearLine))
                path.addLine(to: CGPoint(x: farLine, y: farLine))
                path.addLine(to: CGPoint(x: nearLine, y: farLine))
                path.addLine(to: CGPoint(x: middle - nearLine, y: nearLine))
            }
            .fill(Color(red: 0.4, green: 0.4, blue: 0.4))
            
            Path { path in
                path.move(to: CGPoint(x: middle, y: nearLine))
                path.addLine(to: CGPoint(x: middle, y: farLine))
            }
            .stroke(Color.white,
                    style: StrokeStyle(lineWidth: 3,
                                       dash: [geo.size.height / nearLine]))
            
            Image(systemName: "car.fill")
                .resizable()
                .foregroundColor(.white)
                .scaleEffect(nearLine / 100)
                .offset(x: -geo.size.width / 7.25)
                
                
        }
        .frame(width: width, height: height)
    }
}

struct PathView_Previews: PreviewProvider {
    static var previews: some View {
        PathView(width: 200, height: 200)
    }
}
