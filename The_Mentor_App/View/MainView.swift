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
            UIController.BackgroundGradient()
            
            VStack {
                UIController.TitleTextController(title: "The Mentor App")
                Spacer()
                
                    Spacer()
                    VStack {
                        UIController.NavigationLinkController(destination: SearchView(profiles: profiles), label: "Find a Mentor", fontSize: 25)
                        UIController.NavigationLinkController(destination: TheMentorBrainInput(), label: " Create Profile", fontSize: 25)
                        UIController.NavigationLinkController(destination: ChatView(), label: "Chat", fontSize: 25)
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
