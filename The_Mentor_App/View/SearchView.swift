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
        VStack {
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
                VStack(alignment: .leading) {
                    Text(profile.name)
                        .font(.headline)
                    Text(profile.headline)
                        .font(.subheadline)
                    Text(profile.summary)
                        .font(.subheadline)
                }
            }
            .padding()
        }
        .padding()
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        let profiles = brainTest() // Update function name to brainTest
        //i dont know why this is out of scope
        

        return SearchView(profiles: profiles)
    }
}

func searchMentors(bySkill skill: String, profiles: [TheMentorBrain]) -> [TheMentorBrain] {
    let filteredProfiles = profiles.filter { profile in
        return profile.skills.contains(skill)
    }
    return filteredProfiles // i have no idea why it's saying invalid....
}

