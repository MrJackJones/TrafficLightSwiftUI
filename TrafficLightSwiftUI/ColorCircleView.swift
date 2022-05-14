//
//  ColorCircleView.swift
//  TrafficLightSwiftUI
//
//  Created by Ivan on 14.05.2022.
//

import SwiftUI

struct ColorCircle: View {
    @State var color: Color
    
    var opacity: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 100, height: 100)
            .overlay(Circle().stroke(Color.white, lineWidth: 3))
            .opacity(opacity)
    }
}


struct ColorCircleView_Previews: PreviewProvider {
    static var previews: some View {
        ColorCircle(color: .red, opacity: 1)
    }
}
