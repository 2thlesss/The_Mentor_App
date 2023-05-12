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
            .foregroundColor(foregroundColor)
            .padding(padding)
            .background(
                Circle()
                    .fill(backgroundColor)
                    .opacity(configuration.isPressed ? 0.5 : 1.0)
            )
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)
    }
}
