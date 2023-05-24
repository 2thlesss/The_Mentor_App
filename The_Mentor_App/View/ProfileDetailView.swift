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
            UIController.BackgroundGradient()
            ScrollView{
                
                
                VStack(alignment: .leading) {
                    Text(profile.name)
                        .font(.system(size: 40))
                        .padding(4)
                        .underline()
                    
                    Text(profile.headline)
                        .font(.headline)
                        .padding(4)
                        .multilineTextAlignment(.leading)
                    Divider()
                        .background(Color.black)
                        .padding(.horizontal)
                    Text(profile.summary)
                        .font(.subheadline)
                        .padding(4)
                    Divider()
                        .background(Color.black)
                        .padding(.horizontal)
                    ForEach(profile.skills, id:\.self) { skill in
                        HStack(spacing: 5) {
                            Image(systemName: "circle.fill")
                                .foregroundColor(.white)
                                .font(.system(size: 8))
                            Text(skill)
                                .font(.subheadline)
                        }
                        }
                        
                        ForEach(profile.experience, id: \.title) { experience in
                            VStack(alignment: .leading) {
                                Divider()
                                    .background(Color.black)
                                    .padding(.horizontal)
                                Text(experience.title)
                                    .font(.subheadline)
                                    .padding(4)
                                    .underline()
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

