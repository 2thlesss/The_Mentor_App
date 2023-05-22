//
//  File.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 5/3/23.
//

import Foundation
import SwiftUI
import UIKit


struct NavigationLinkController<Destination: View>: View {
    let destination: Destination
    let label: String
    let fontSize: CGFloat
    
    var body: some View {
        NavigationLink(destination: destination) {
            Text(label)
                .font(.custom("AmericanTypewriter-Bold", size: fontSize))
                .bold()
                .foregroundColor(.white)
                .padding()
                .frame(width: 220, height: 60)
                .background(Color(red: 0/255, green: 160/255, blue: 220/255))
                .cornerRadius(15.0)
                .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
        }
    }
}
