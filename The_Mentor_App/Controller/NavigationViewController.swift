//
//  NavigationViewController.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 4/12/23.
//

import SwiftUI

struct NavigationViewController<Content: View>: View {
    let screen: String
    let destination: Content
    
    var body: some View {
      
        NavigationLink(destination: destination) {
            Text(screen)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color.white)
                        .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y:5)
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black, lineWidth: 1))
        }
    }
}
