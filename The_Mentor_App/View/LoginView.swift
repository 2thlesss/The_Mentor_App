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
                
                HStack{
                    Spacer()
                    VStack{
                        Spacer()
                        TitleTextController(title: "Login")
                        TextFieldController(text: $loginTextFieldData.userName,
                                            placeholder: "User Name")
                        TextFieldController(text: $loginTextFieldData.passWord, placeholder: "Password")
                            .padding()
                        Spacer()
                        ////                    SecureField("Password", text: .constant(""))
                        ////                        .font(.system(size: 20, weight: .bold, design: .default))
                        ////                        .padding()
                        ////                        .background(
                        ////                            RoundedRectangle(cornerRadius: 15)
                        ////                                .fill(Color.white)
                        //                        )
                        //                        .overlay(
                        //                            RoundedRectangle(cornerRadius: 15)
                        //                                .stroke(Color.black, lineWidth: 1))
                        
                        NavigationLinkController(destination: MainView(), label: "Login")

                    }
                    
                }
                Spacer()
            }
            
            
        
    }
    
    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }
}


