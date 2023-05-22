//
//  RegisterView.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 4/27/23.
//

import SwiftUI

// Define an ObservableObject to store the values of the text fields
class TextFieldData: ObservableObject {
    @Published var password: String = "" // Password
    @Published var userName: String = "" // User name
}

// Define the main view that displays the registration form
struct RegisterView: View {
    // variable and constant for the dictionary to hold UUID/Password
    @State var dictionary: [String: String] = [:]
    @State var inputText: String = ""
    
    let filename = "userData.json"

    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

    // Create an instance of TextFieldData using @StateObject to make it observable
    @StateObject var textFieldData = TextFieldData()

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .green]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all) // Extend the gradient to the edges of the view
            
            VStack {
                // Display the title and subtitle for the registration form
                TitleTextController(title: "Registration")
                Text("Create an account to get started")
                    .font(.body).foregroundColor(Color.black)
                VStack(spacing: 20) {
                    // Display two text fields for user name and password
                    TextFieldController(text: $textFieldData.userName, placeholder: "User Name")
                    TextFieldController(text: $textFieldData.password, placeholder: "Enter Password")
                }
                // Display a button that navigates to the MainView when pressed
                NavigationLinkController(destination: MainView(), label: "Login", fontSize: 40)
            
            }
            // Push the VStack up to the top of the screen
            Spacer()
        }
    }
}

// Define a preview struct for the RegisterView
struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}



