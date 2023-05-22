//
//  LoginView.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 4/27/23.
//

import SwiftUI
class LoginTextFieldData : ObservableObject {
    @Published var userName = ""
    @Published var passWord = ""
}


struct LoginView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @StateObject var loginTextFieldData = LoginTextFieldData()
    
    
    var body: some View {
       
            ZStack{
                LinearGradient(gradient: Gradient(colors: [Color(red: 202/255, green: 204/255, blue: 206/255),Color(red: 0/255, green: 119/255, blue: 181/255) ]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all) // Extend the gradient to the edges of the view
                
                VStack{
                
                
                        
                        Image("LI-Logo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                            .clipShape(Circle())
                            .overlay(
                                                    Circle()
                                                        .stroke(Color(red: 230/255, green: 133/255, blue: 0/255), lineWidth: 4)
                                                        .padding(165)  // Adjust the padding value to get the desired size
                                                )
                            .shadow(radius: 7)
                            .padding()
                    VStack{ NavigationLinkController(destination: MainView(), label: "Login", fontSize: 40)
                    }
                        
                        
                        
                    
                        
                    
                  

                    }
                    
                }
        
            }
            
            
        
    }
    
    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }



