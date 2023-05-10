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
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundColor(.init(red: 0, green: 0, blue: 255))
            .multilineTextAlignment(.center)
            .padding(.bottom, 20.0)
    }
}
