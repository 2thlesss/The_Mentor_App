//
//  The_Mentor_AppApp.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 4/25/23.
//
import UIKit
import SwiftUI
import Firebase

struct FirebaseAppKey: EnvironmentKey {
    static var defaultValue: FirebaseApp? {
        FirebaseApp.app()
    }
}

extension EnvironmentValues {
    var firebaseApp: FirebaseApp? {
        get { self[FirebaseAppKey.self] }
        set { self[FirebaseAppKey.self] = newValue }
    }
}

@main
struct The_Mentor_AppApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    @StateObject private var appState = AppState()
    let profiles: [TheMentorBrain] = [] // Provide the array of TheMentorBrain instances
    
    init() {
        FirebaseApp.configure()
        let db = Firestore.firestore()
        print(db)
    }
    
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
                    .environment(\.firebaseApp, FirebaseApp.app()) // Pass the Firebase app instance as environment object
                //SearchView(profiles: profiles) // Uncomment if needed
            }
        }
    }
}

class AppState: ObservableObject {
    @Published var showingLaunchScreen: Bool = true
}

@objc
class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Additional configuration or setup for Firebase can be done here if needed
        
        return true
    }
}
