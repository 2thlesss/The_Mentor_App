//
//  RegisterView.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 4/27/23.
//

import SwiftUI
import Amplify

struct RegisterView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isRegistered = false
    
    var body: some View {
        
            ZStack {
                UIController.BackgroundGradient()
                
                VStack {
                    UIController.TitleTextController(title: "Register for an Account")
                    
                    TextField("Email", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    
                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    
                    Button(action: {
                        register()
                    }) {
                        Text("Register")
                            .font(.custom("AmericanTypewriter-Bold", size: 20))
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                    .padding()
                    
                    NavigationLink(destination: MainView(), isActive: $isRegistered) {
                        EmptyView()
                    }
                    .isDetailLink(false)
                    .opacity(0.0)
                    .frame(width: 0, height: 0)
                    .disabled(true)
                }
            }
        }
    
    
    func register() {
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            if let error = error {
                print("Registration failed: \(error.localizedDescription)")
            } else {
                // Registration successful, navigate to MainView
                DispatchQueue.main.async {
                    isRegistered = true
                }
            }
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
