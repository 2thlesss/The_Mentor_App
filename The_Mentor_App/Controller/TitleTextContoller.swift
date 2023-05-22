//
//  File.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 5/9/23.
//

import Foundation
import UIKit
import SwiftUI

struct TitleTextController: View {
    var title : String
    var body: some View {
        
        Text(title)
            .font(.custom("AmericanTypewriter-Bold", size: 50))
            .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y:5)
        //center the text
            .multilineTextAlignment(.center)
            .padding()
        
        //soft blue background oval behind the text
            .background(Color(red: 5/255, green: 118/255, blue: 179/255))
            .cornerRadius(20)
            .foregroundColor(.white)
            .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y:5)
            .padding()
    }
}
