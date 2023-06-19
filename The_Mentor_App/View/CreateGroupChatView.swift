//
//  CreateGroupChatView.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 5/23/23.
//

import SwiftUI


struct CreateGroupChatView: View {
    var body: some View {
        VStack{
            Text("Hello world, how are you ?")
                .font(.headline)
            UIController.TitleTextController(title: "This is a title")
            Text (" Hi, my name is TJ")
            Image("GPL")
            Image("LI-Logo")
                .resizable()
                
                .frame(width: 350, height: 200)
        }
    }
}
struct CreateGroupChatView_Previews: PreviewProvider {
    static var previews: some View {
        CreateGroupChatView()
    }
}
