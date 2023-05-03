//
//  File.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 5/3/23.
//

import Foundation
import SwiftUI
import UIKit


struct NavigationLinkController<Destination: View>: View {
    let destination : Destination
    let label : String
    
    var body: some View {
        NavigationLink(destination: destination ){Text(label)}
            .font(.title)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color(.blue))
            .cornerRadius(15.0)
    }
}
