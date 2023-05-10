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
                Color(.init(red: 0, green: 255, blue: 255, alpha:0.5)) //light blue
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Text("The Mentor App")
                    // i want a custom font of AmericanTypewriter-Bold
                        .font(.custom("AmericanTypewriter-Bold", size: 50))
                    //center the text
                        .multilineTextAlignment(.center)
                        .padding()
                    //soft blue background oval behind the text
                        .background(Color(.systemBlue))
                        .cornerRadius(20)
                        .foregroundColor(.white)
                        .padding()
                    Spacer()
                }
                HStack{
                    NavigationViewController(screen: "Login", destination: LoginView())
                    NavigationViewController(screen: "Register", destination: RegisterView()
                    
                    )
                    
                    
                }
            }
        }
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
