//
//  BubbleButtonStyle.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 4/5/23.
//

import Foundation
import UIKit
import SwiftUI

struct BubbleButtonStyle: ButtonStyle {
    var padding: CGFloat = 16.0
    var backgroundColor: Color = .red
    var foregroundColor: Color = .white
    var cornerRadius: CGFloat = 30.0
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .font(.title)
            .bold()
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color(red: 0/255, green: 160/255, blue: 220/255))
            .cornerRadius(15.0)
            .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y:5)
            
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
    }
}
