//
//  ProfileDetailView.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 5/15/23.
//

import SwiftUI

struct ProfileDetailView: View {
    let profile: TheMentorBrain
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(profile.name)
                .font(.headline)
            Text(profile.headline)
                .font(.subheadline)
            Text(profile.summary)
                .font(.subheadline)
            
            // Add more views to display additional details of the profile
        }
        .padding()
        .navigationTitle(profile.name) // Set the navigation title to the profile's name
    }
}

struct ProfileDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileDetailView(profile: TheMentorBrain.sampleData[0])
    }
}
