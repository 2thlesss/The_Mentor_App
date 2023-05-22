//
//  Message.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 5/22/23.
//

import Foundation

struct Message: Identifiable {
    let id: UUID = UUID()
    
    let sender: String // email address
    let body: String // text message content
}
