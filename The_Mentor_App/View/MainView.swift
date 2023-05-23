//
//  MainView.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 4/27/23.
//
import SwiftUI

struct MainView: View {
    @State private var isSpinning = false
    @State private var profiles: [TheMentorBrain] = []
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(red: 202/255, green: 204/255, blue: 206/255),Color(red: 0/255, green: 119/255, blue: 181/255)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all) // Extend the gradient to the edges of the view
            
            VStack {
                TitleTextController(title: "The Mentor App")
                Spacer()
                
                    Spacer()
                    VStack {
                        NavigationLinkController(destination: SearchView(profiles: profiles), label: "Find a Mentor", fontSize: 25)
                        NavigationLinkController(destination: TheMentorBrainInput(), label: " Create Profile", fontSize: 25)
                        NavigationLinkController(destination: ChatView(), label: "Chat", fontSize: 25)
                    }
                }
            }
            .onAppear {
                profiles = brainTest()
            }
        }
    }


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
