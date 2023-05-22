//
//  ContentView.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 4/25/23.
//
import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var appState: AppState
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color(red: 202/255, green: 204/255, blue: 206/255), Color(red: 0/255, green: 119/255, blue: 181/255)]),
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    TitleTextController(title: "The Mentor App")
                    Spacer()
                    
                    NavigationLinkController(destination: LoginView(), label: "Login", fontSize: 40)
                    
                    NavigationLinkController(destination: RegisterView(), label: "Register", fontSize: 40)
                    
                    Spacer()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(AppState())
    }
}
