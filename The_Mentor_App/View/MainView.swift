//
//  MainView.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 4/27/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        
        ZStack{
            //need a black background
            Color(.init(red: 0, green: 255, blue: 255, alpha:0.5)) //light blue
                .edgesIgnoringSafeArea(.all)
            VStack{
                TitleTextController(title: "Welcome to the Mentor App!")
        Spacer()
                HStack{
                    NavigationViewController(screen: "Chat", destination: ChatView())
                    HStack{ NavigationViewController(screen: "Find a Mentor", destination: SearchView(profiles: <#[TheMentorBrain]#>)}
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



