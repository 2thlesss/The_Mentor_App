//
//  ContentView.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 4/25/23.
//
import UIKit     // Importing UIKit framework
import SwiftUI   // Importing SwiftUI framework

struct ContentView: View {    // Defining a SwiftUI view called ContentView
    
    var body: some View {    // Defining the body of the ContentView view
        
        NavigationView {    // Wrapping the content in a NavigationView
            
            ZStack {    // Using a ZStack to layer views on top of each other
                
                // Creating a linear gradient background
                LinearGradient(gradient: Gradient(colors: [Color(red: 202/255, green: 204/255, blue: 206/255), Color(red: 0/255, green: 119/255, blue: 181/255)]),
                               startPoint: .topLeading,
                               endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all) // Extend the gradient to the edges of the view
                
                VStack {    // Using a VStack to vertically stack views
                    
                    TitleTextController(title: "The Mentor App")   // Displaying a custom view called TitleTextController
                    Spacer()    // Creating flexible space between views
                }
                
                VStack {    // Another VStack for stacking views
                    
                    NavigationLinkController(destination: MainView(), label: "Login", fontSize: 40)    // Displaying a custom view called NavigationLinkController
                    Spacer()
                        .frame(minHeight: 0, idealHeight: 30, maxHeight: 50)   // Setting the height of the spacer
                    
                }
                
                VStack {    // Another VStack for spacing
                    
                    Spacer()    // Creating flexible space
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {   // Preview provider for ContentView
    static var previews: some View {
        ContentView()   // Previewing the ContentView
    }
}

