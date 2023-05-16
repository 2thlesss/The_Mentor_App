//
//  MainView.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 4/27/23.
//
import SwiftUI

struct MainView: View {
    @State private var  profiles : [TheMentorBrain] = []

    var body: some View {
        ZStack {
            // Background color
            Color(.init(red: 0, green: 255, blue: 255, alpha: 0.5))
                .edgesIgnoringSafeArea(.all)
            VStack {
                TitleTextController(title: "Welcome to the Mentor App!")
            
                HStack {
                    NavigationLinkController(destination: SearchView(profiles: profiles), label: "Find a Mentor")
                   
                
                    
                }
                
                
            }
        }
        .onAppear{
            profiles = brainTest()
        }
    }
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}



