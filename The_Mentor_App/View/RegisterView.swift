//
//  RegisterView.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 4/27/23.
//

import SwiftUI
class TextFieldData: ObservableObject {
    @Published var email: String = "" //pointsWeHave
    @Published var password: String = "" //pointsWeNeed
    @Published var confirmPassword: String = ""//donationValue
    @Published var userName: String = ""//dailyAve
}

struct RegisterView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    @StateObject var textFieldData = TextFieldData()
    var body: some View {
        
            ZStack{
                Color(.init(red: 0, green: 255, blue: 255, alpha:0.5)) //light blue
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Text("Register")
                        .font(.largeTitle).fontWeight(.heavy).foregroundColor(Color.black)
                    Text("Create an account to get started")
                        .font(.body).foregroundColor(Color.black)
                    VStack(spacing: 20){
                        
                        TextFieldController(text: $textFieldData.email, placeholder: "email")
                        
                        TextFieldController(text: $textFieldData.userName, placeholder: "User Name")
                        
                        TextFieldController(text: $textFieldData.password, placeholder: "Enter Password")
                        TextFieldController(text: $textFieldData.confirmPassword, placeholder: "Retype Password")
                        
                        
                    }
                NavigationLinkController(destination: MainView(), label: "Register")
                }
                    Spacer()
                }
            
        
        }
    }
    struct RegisterView_Previews: PreviewProvider {
        static var previews: some View {
            RegisterView()
        }
    }

