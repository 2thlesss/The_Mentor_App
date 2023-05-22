//
//  The_Mentor_AppApp.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 4/25/23.
//

import SwiftUI
import UIKit
import Firebase

@main
struct The_Mentor_AppApp: App {
    @StateObject private var appState = AppState()
    let profiles: [TheMentorBrain] = [] // Provide the array of TheMentorBrain instances
    
    var body: some Scene {
        WindowGroup {
            if appState.showingLaunchScreen {
                LaunchScreen()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                            appState.showingLaunchScreen = false
                        }
                    }
            } else {
                ContentView()
                //SearchView(profiles: profiles) // this is here because i can't figure out why the search doesn't work when i build the app.
            }
        }
    }
}

class AppState: ObservableObject {
    @Published var showingLaunchScreen: Bool = true
}

class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure() // Initialize Firebase
        
        // Additional configuration or setup for Firebase can be done here if needed
        
        return true
    }
}
