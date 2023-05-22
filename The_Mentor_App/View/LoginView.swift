//
//  LoginView.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 4/27/23.
//
import SwiftUI
import Firebase

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var isLoggedin = false
    
    var body: some View {
        
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color(red: 202/255, green: 204/255, blue: 206/255), Color(red: 0/255, green: 119/255, blue: 181/255)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all) // Extend the gradient to the edges of the view
                
                VStack {
                    TitleTextController(title: "Login")
                    
                    TextField("Email", text: $email)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    
                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    
                    Button(action: {
                        login()
                    }) {
                        Text("Go!!!")
                            .font(.custom("AmericanTypewriter-Bold", size: 20))
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                    .padding()
                    
                    NavigationLink(destination: MainView(), isActive: $isLoggedin) {
                        EmptyView()
                    }
                    .opacity(0.0)
                    .frame(width: 0, height: 0)
                    .disabled(true)
                }
            }
        }
    
    
    func login() {
        Auth.auth().signIn(withEmail: self.email, password: self.password) { (authResult, error) in
            if let error = error {
                print(error.localizedDescription)  // Handle this error in a user-friendly way
            } else {
                // Successful login: Navigate to MainView
                DispatchQueue.main.async {
                    self.isLoggedin = true
                }
            }
        }
    }
    
    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }
}
