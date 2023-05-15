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
        ZStack{
            Color(.init(red: 0, green: 255, blue: 255, alpha:0.5)) //light blue
                    .edgesIgnoringSafeArea(.all)
        ScrollView{
            
                
                VStack(alignment: .leading) {
                    Text(profile.name)
                
                        .font(.headline)
                        .padding(4)
                    
                    Text(profile.headline)
                        .font(.subheadline)
                        .padding(4)
                        .multilineTextAlignment(.leading)
                    Text(profile.summary)
                        .font(.subheadline)
                        .padding(4)
                    ForEach(profile.skills, id:\.self) { skill in
                        Text(skill)
                    }
                    
                    ForEach(profile.experience, id: \.title) { experience in
                        VStack(alignment: .leading) {
                            Text(experience.title)
                                .font(.subheadline)
                                .padding(4)
                            Text(experience.company)
                                .font(.subheadline)
                                .padding(4)
                            Text(experience.dates)
                                .font(.subheadline)
                                .padding(4)
                            
                            ForEach(experience.responsibilities, id: \.self) { responsibility in
                                Text(responsibility)
                                    .font(.subheadline)
                            }
                        }
                    }
                    
                    // Add more views to display additional details of the profile
                }
                .padding()
                .navigationTitle(profile.name) // Set the navigation title to the profile's name
            }
        }
    }
}
struct ProfileDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileDetailView(profile: TheMentorBrain.sampleData[0])
    }
}
