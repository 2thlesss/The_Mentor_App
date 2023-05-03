//
//  The_Mentor_AppApp.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 4/25/23.
//

import SwiftUI
import UIKit
@main
struct The_Mentor_AppApp: App {
    @StateObject private var appState = AppState()

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
            }
        }
    }
}

class AppState: ObservableObject {
    @Published var showingLaunchScreen: Bool = true
}
