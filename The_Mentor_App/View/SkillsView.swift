//
//  SkillListView.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 5/24/23.
//
import SwiftUI

struct SkillsView: View {
    @Binding var skills: [String]
    @State private var newSkill: String = ""

    var body: some View {
        VStack {
            UIController.TextFieldController(text: $newSkill, placeholder:"Add a skill")
            
            Button(action: {
                skills.append(newSkill)
                newSkill = ""
            }) {
                UIController.ProfileButtonText(profileText: "Add Skill")
            }
            
            ScrollView {
                ForEach(skills, id: \.self) { skill in
                    HStack {
                        Text(skill)
                        Spacer()
                        Button(action: {
                            skills.removeAll(where: { $0 == skill })
                        }) {
                            Image(systemName: "xmark.circle.fill")
                                .foregroundColor(.red)
                        }
                    }
                    .padding()
                }
            }
        }
    }
}

struct SkillsView_Previews: PreviewProvider {
    @State static var skills = ["Skill 1", "Skill 2"]
    
    static var previews: some View {
        SkillsView(skills: $skills)
    }
}
