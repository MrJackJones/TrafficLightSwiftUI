//
//  ButtonView.swift
//  TrafficLightSwiftUI
//
//  Created by Ivan on 14.05.2022.
//

import SwiftUI

struct ButtonView: View {
    var title: String
    var action = {}
    
    var body: some View {
        ZStack {
            Color(.systemBlue)
                .frame(width: 150, height: 75)
                .cornerRadius(30)
                .overlay(
                    RoundedRectangle(cornerRadius: 30)
                        .stroke(Color.white, lineWidth: 3)
            )
            
            Button(action: action) {
                Text(title)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "START")
    }
}
