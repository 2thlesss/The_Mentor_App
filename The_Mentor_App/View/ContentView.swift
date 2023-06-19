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
                UIController.BackgroundGradient()
                
                VStack {
                    UIController.TitleTextController(title: "The Mentor App")
                        .accessibilityLabel("The Mentor App")
                    Spacer()
                    
                    UIController.NavigationLinkController(destination: LoginView(), label: "Login", fontSize: 40)
                        .accessibilityLabel("Login")
                    UIController.NavigationLinkController(destination: RegisterView(), label: "Register", fontSize: 40)
                        .accessibilityLabel("Register")
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
