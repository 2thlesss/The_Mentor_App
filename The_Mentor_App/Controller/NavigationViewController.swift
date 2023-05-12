//
//  NavigationViewController.swift
//  ID TImer
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
                )
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.black, lineWidth: 1))
        }
    }
}
