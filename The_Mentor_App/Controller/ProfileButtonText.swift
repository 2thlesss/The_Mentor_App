//
//  ProfileButtonText.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 5/24/23.
//

import Foundation
import SwiftUI
import UIKit



struct ProfileButtonText: View {
    let profileText : String
    var body: some View {
        Text(profileText)
            .bold()
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 40)
            .background(Color(red: 0/255, green: 160/255, blue: 220/255))
            .cornerRadius(15.0)
            .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
    }
}
