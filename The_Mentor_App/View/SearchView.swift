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
    init(profiles: [TheMentorBrain]) {
            self.profiles = profiles
            
        }
    var body: some View {
        
        
            ZStack{ Color(.init(red: 0, green: 255, blue: 255, alpha:0.5)) //light blue
                    .edgesIgnoringSafeArea(.all)
                VStack {
                   Text("Mentor Search")
                        .bold()
                        .font(.largeTitle)
Text ("Example - Leadership, Managment, Risk, Compliance")
                        .font(.footnote)
                    TextField("Enter skill", text: $skillQuery)
                        .padding()
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button("Search") {
                        filteredProfiles = searchMentors(bySkill: skillQuery, profiles: profiles)
                        print (filteredProfiles)
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
                    
                    .padding()
                }
                .padding()
                
                    
                    // Set the navigation title for the SearchView
            }
        }
    }
    func searchMentors(bySkill skill: String, profiles: [TheMentorBrain]) -> [TheMentorBrain] {
        let trimmedSkill = skill.trimmingCharacters(in: .whitespacesAndNewlines)
        let lowercaseSkill = trimmedSkill.lowercased()
        
        let filteredProfiles = profiles.filter { profile in
            let lowercaseSkills = profile.skills.map { $0.lowercased() }
            let isMatch = lowercaseSkills.contains { skill in
                let isMatching = skill.range(of: lowercaseSkill) != nil
                print("Skill:", skill, "Query:", lowercaseSkill, "Is Matching:", isMatching)
                return isMatching
            }
            return isMatch
        }
        
        return filteredProfiles
    }


}
struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        let profiles : [TheMentorBrain] = TheMentorBrain.sampleData
        

        return SearchView(profiles: profiles)
    }
}



