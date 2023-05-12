//
//  TextFieldController.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 4/11/23.
//

import Foundation
import UIKit
import SwiftUI




struct TextFieldController: View {
    @Binding var text: String
       let placeholder: String

       var body: some View {
           TextField(placeholder, text: $text)
            .font(.system(size: 20, weight: .bold, design: .default))
            .foregroundColor(.black)
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 15)
                    .fill(Color.white)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.black, lineWidth: 1))
}
            }
