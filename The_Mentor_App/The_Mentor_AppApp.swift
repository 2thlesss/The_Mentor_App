//
//  The_Mentor_AppApp.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 4/25/23.
//
import SwiftUI
import Firebase

@main
struct The_Mentor_AppApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
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
                    .environmentObject(appState) // Add the appState as an environment object
            }
        }
    }
}

class AppState: ObservableObject {
    @Published var showingLaunchScreen: Bool = true
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure() // Configure Firebase
        let db = Firestore.firestore() // Access Firestore instance and assign it to 'db'
        print("Firestore instance:", db) // Debugging print statement
        
        // Additional setup or configuration if needed
        
        return true
    }
}
