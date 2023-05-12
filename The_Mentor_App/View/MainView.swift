//
//  MainView.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 4/27/23.
//
import SwiftUI

struct MainView: View {
    let profiles: [TheMentorBrain] = [] // Provide the array of TheMentorBrain instances

    var body: some View {
        ZStack {
            // Background color
            Color(.init(red: 0, green: 255, blue: 255, alpha: 0.5))
                .edgesIgnoringSafeArea(.all)
            VStack {
                TitleTextController(title: "Welcome to the Mentor App!")
                Spacer()
                HStack {
                    NavigationViewController(screen: "Chat", destination: ChatView())
                    NavigationViewController(screen: "Find a Mentor", destination: SearchView(profiles: profiles)) // Provide the profiles array
                }
            }
        }
    }
}


struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}



