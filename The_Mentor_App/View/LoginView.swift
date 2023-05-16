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
                Color(.init(red: 0, green: 255, blue: 255, alpha:0.5)) //light blue
                    .edgesIgnoringSafeArea(.all)
                HStack{
                    Spacer()
                    VStack{
                        Spacer()
                        Text("Login")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(Color(.black))
                            .padding(.bottom, 20)
                        TextFieldController(text: $loginTextFieldData.userName,
                                            placeholder: "User Name")
                        TextFieldController(text: $loginTextFieldData.passWord, placeholder: "password")
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


