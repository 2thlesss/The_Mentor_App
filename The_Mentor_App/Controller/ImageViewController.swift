//
//  ImageViewController.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 4/11/23.
//
import UIKit
import SwiftUI


struct ImageViewController: View {
    var picture : String
    var body: some View {
        Image (picture)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .ignoresSafeArea()
    }
}
