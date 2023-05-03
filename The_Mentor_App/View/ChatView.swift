//
//  ChatView.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 4/27/23.
//

import SwiftUI

struct ChatView: View {
    @State private var message: String = ""
    @State private var messages: [String] = []
    
    var body: some View {
        VStack {
            List(messages, id: \.self) { message in
                Text(message)
            }
            HStack {
                TextField("Type your message", text: $message)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .background(Color.green)
                Button("Send") {
                    messages.append(message)
                    message = ""
                }
                .foregroundColor(.white)
                .padding(.horizontal, 10)
                .background(Color.blue)
                .cornerRadius(5)
            }
            .padding()
            .background(Color.green)
        }
       
    }
}

    struct ChatView_Previews: PreviewProvider {
        static var previews: some View {
            ChatView()
        }
    }
    

