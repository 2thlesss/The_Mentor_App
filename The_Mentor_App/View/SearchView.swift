//
//  SearchView.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 5/9/23.
//
import SwiftUI

struct SearchView: View {
    @State private var skillQuery = ""
    @State private var filteredProfiles: [TheMentorBrain] = []

    let profiles: [TheMentorBrain]

    var body: some View {
        
        NavigationView {
            ZStack{ Color(.init(red: 0, green: 255, blue: 255, alpha:0.5)) //light blue
                    .edgesIgnoringSafeArea(.all)
                VStack {
                   Text ("Example - Leadership, Managment, Risk, Compliance")
                        .font(.subheadline)
                    TextField("Enter skill", text: $skillQuery)
                        .padding()
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button("Search") {
                        filteredProfiles = searchMentors(bySkill: skillQuery, profiles: profiles)
                    }
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(8)
                    
                    List(filteredProfiles, id: \.name) { profile in
                        NavigationLink(destination: ProfileDetailView(profile: profile)) {
                            VStack(alignment: .leading) {
                                Text(profile.name)
                                    .font(.headline)
                                Text(profile.headline)
                                .font(.subheadline)
                                Spacer()
                                ScrollView{
                                    Text(profile.summary)
                                        .font(.subheadline)
                                        .lineLimit(2)
                                        .padding(.horizontal)
                                }
                            }
                        }
                    }
                    .padding()
                }
                .padding()
                .navigationTitle("Search") // Set the navigation title for the SearchView
            }
        }
    }
    func searchMentors(bySkill skill: String, profiles: [TheMentorBrain]) -> [TheMentorBrain] {
        let trimmedSkill = skill.trimmingCharacters(in: .whitespacesAndNewlines)
        let lowercaseSkill = trimmedSkill.lowercased()
        
        let filteredProfiles = profiles.filter { profile in
            let lowercaseSkills = profile.skills.map { $0.lowercased() }
            return lowercaseSkills.contains { skill in
                return skill.range(of: lowercaseSkill) != nil
            }
        }
        
        return filteredProfiles
    }
}
struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        let profiles = brainTest() 
        

        return SearchView(profiles: profiles)
    }
}


