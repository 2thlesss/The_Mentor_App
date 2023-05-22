//
//  ContentView.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 4/25/23.
//
import UIKit
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ZStack{
                LinearGradient(gradient: Gradient(colors: [Color(red: 202/255, green: 204/255, blue: 206/255),Color(red: 0/255, green: 119/255, blue: 181/255) ]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all)// Extend the gradient to the edges of the view
                
                
                
                //split the background into two colors
                
                VStack {
                    TitleTextController(title: "The Mentor App")
                    Spacer()
                }
                
                VStack{
                    
                    
                    
                    NavigationLinkController(destination: MainView(), label: "Login", fontSize: 40)
                    Spacer()
                        .frame(minHeight: 0, idealHeight: 30, maxHeight: 50)
                    
                    
                }
                VStack{
                    Spacer()
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

