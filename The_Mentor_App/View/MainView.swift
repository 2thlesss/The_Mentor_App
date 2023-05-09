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
            Color(.black)
                .edgesIgnoringSafeArea(.all)
            VStack{
                
                Text("The Mentor App")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 20.0)
                Text("Welcome to the Mentor App!")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 20.0)
                Text("Here you can find a mentor to help you with your career!")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 20.0)
                Text("You can also be a mentor to help others!")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 20.0)
                Text("Click on the Chat tab to get started!")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 20.0)
                Spacer()
                // i need a navigationviewcontroller to ChatView.
                
                HStack{
                    NavigationViewController(screen: "Chat", destination: ChatView())
                    HStack{ NavigationViewController(screen: "Find a Mentor", destination: SearchView())}
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


