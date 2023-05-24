//
//  LaunchScreen.swift
//  ID TImer
//
//  Created by Thomas Jadie Reeves on 4/20/23.
//

import SwiftUI
import UIKit
struct LaunchScreen: View {
    @State private var isVisible = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(red: 202/255, green: 204/255, blue: 206/255), Color(red: 0/255, green: 119/255, blue: 181/255)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            
            
            VStack {
                
                Image("GPL")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 700, height: 700)
                    .clipShape(Circle())
                    
                    .overlay(
                                            Circle()
                                                .stroke(Color(red: 230/255, green: 133/255, blue: 0/255), lineWidth: 4)
                                                .padding(165)  // Adjust the padding value to get the desired size
                                        )
                    .shadow(radius: 7)
                    
                    .opacity(isVisible ? 1 : 0)
                    .onAppear {
                        withAnimation(.easeIn(duration: 1)) {
                            isVisible = true
                        }
                    }
            }
        }
    }
}

struct LaunchScreen_Previews: PreviewProvider {
    static var previews: some View {
        LaunchScreen()
    }
}
