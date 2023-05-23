//
//  ChatView.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 4/27/23.
//
import SwiftUI
import Firebase
import FirebaseAuth

struct ChatView: View {
    @StateObject private var chatViewModel = ChatViewModel()

    @State private var messageText = ""

    var body: some View {
        
        
            VStack {
                HStack{
                    NavigationLinkController(destination: CreateGroupChatView(), label: "New Chat", fontSize: 20)
                        .padding(.trailing)
                }
                List(chatViewModel.messages) { message in
                    MessageRow(message: message)
                }
                .listStyle(.plain)
                                HStack {
                    TextField("Enter message", text: $messageText)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button(action: {
                        chatViewModel.sendMessage(messageText)
                        messageText = ""
                    }) {
                        Image(systemName: "paperplane")
                            .foregroundColor(.black)
                    }
                    .padding(.horizontal)
                                    
                }
                .padding()
                .background(LinearGradient(gradient: Gradient(colors: [Color(red: 202/255, green: 204/255, blue: 206/255),Color(red: 0/255, green: 119/255, blue: 181/255) ]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all))

            }
            .navigationTitle(Text("Chat"))
            
        
        .onAppear {
            chatViewModel.loadMessages()
        }
    }
}

struct MessageRow: View {
    var message: Message
    
    var body: some View {
        ZStack{ LinearGradient(gradient: Gradient(colors: [Color(red: 202/255, green: 204/255, blue: 206/255),Color(red: 0/255, green: 119/255, blue: 181/255) ]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
                .cornerRadius(10)
            
            // Extend the gradient to the edges of the view
            
            HStack {
                if message.sender == Auth.auth().currentUser?.email {
                    Spacer()
                    Text(message.body)
                        .padding(.leading)
                        
                        .foregroundColor(Color.black)
                        .cornerRadius(10)
                } else {
                    Text(message.body)
                        .padding(.leading)
                        
                        .foregroundColor(Color.black)
                        .cornerRadius(10)
                    Spacer()
                }
            }
        }
    }
}
struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
