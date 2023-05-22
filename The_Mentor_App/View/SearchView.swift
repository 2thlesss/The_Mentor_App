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
                    .onTapGesture {
                        UIApplication.shared.sendAction(#selector(UIResponder.becomeFirstResponder), to: nil, from: nil, for: nil)
                    }
                Button("Search") {
                    dismissKeyboard()
                    filteredProfiles = searchMentors(byQuery: skillQuery, profiles: profiles)
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
    func searchMentors(byQuery query: String, profiles: [TheMentorBrain]) -> [TheMentorBrain] {
        let trimmedQuery = query.trimmingCharacters(in: .whitespacesAndNewlines)
        let lowercaseQuery = trimmedQuery.lowercased()
        
        let regexPattern = "\\b" + NSRegularExpression.escapedPattern(for: lowercaseQuery) + "\\b"
        let regexOptions: NSRegularExpression.Options = [.caseInsensitive, .anchorsMatchLines]
        
        guard let regex = try? NSRegularExpression(pattern: regexPattern, options: regexOptions) else {
            return []
        }
        
        let filteredProfiles = profiles.filter { profile in
            let lowercaseSkills = profile.skills.map { $0.lowercased() }
            let lowercaseHeadline = profile.headline.lowercased()
            
            let skillsMatch = lowercaseSkills.contains { skill in
                return regex.firstMatch(in: skill, options: [], range: NSRange(location: 0, length: skill.utf16.count)) != nil
            }
            
            let headlineMatch = regex.firstMatch(in: lowercaseHeadline, options: [], range: NSRange(location: 0, length: lowercaseHeadline.utf16.count)) != nil
            
            return skillsMatch || headlineMatch
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


func dismissKeyboard() {
    UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
}
