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
        
        
            ZStack{LinearGradient(gradient: Gradient(colors: [Color(red: 202/255, green: 204/255, blue: 206/255),Color(red: 0/255, green: 119/255, blue: 181/255) ]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    .edgesIgnoringSafeArea(.all) // Extend the gradient to the edges of the view
                
                VStack {
                 TitleTextController(title: "The Mentor App")
                    Text ("Search for a Mentor")
                        .font(.system(size: 40))
                    Text ("Key word examples - Leadership, Management, Security, Communication")
                        .font(.footnote)
                    
                   
                    
                              TextField("Enter skill", text: $skillQuery)
                        .padding()
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button("Search") {
                        filteredProfiles = searchMentors(bySkill: skillQuery, profiles: profiles)
                        
                    }
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                    .frame(width: 220, height: 60)
                    .background(Color(red: 0/255, green: 160/255, blue: 220/255))
                    .cornerRadius(15.0)
                    .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y:5)
                    
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



