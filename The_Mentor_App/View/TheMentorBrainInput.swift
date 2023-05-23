//
//  TheMentorBrainInput.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 5/23/23.
//

import SwiftUI
import Firebase


struct TheMentorBrainInput: View {
    @State private var name = ""
    @State private var headline = ""
    @State private var summary = ""
    @State private var experiences: [String] = []
    @State private var newExperience : String = ""
    @State private var certifications: [String] = []
    @State private var newCertification: String = ""
    @State private var skill: [String] = []
    @State private var newSkill : String = ""
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(red: 202/255, green: 204/255, blue: 206/255),Color(red: 0/255, green: 119/255, blue: 181/255)]), startPoint: .topLeading, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all) // Extend the gradient to the edges of the view
            
            VStack {
                TitleTextController(title: "Profile")
                
                TextFieldController(text: $name, placeholder: "name")
                TextFieldController(text: $headline, placeholder: "Headline")
                TextFieldController(text: $summary, placeholder: "Summary")
                
                TextField("Work Experience", text: $newExperience)
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .foregroundColor(.black)
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color.white)
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.black, lineWidth: 1)
                    )
                
                Button(action: {
                    experiences.append(newExperience)
                    newExperience = ""
                }) {
                    Text("Add Experience")
                        .bold()
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 220, height: 40)
                        .background(Color(red: 0/255, green: 160/255, blue: 220/255))
                        .cornerRadius(15.0)
                        .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
                }
                
                TextField("Certifications", text: $newCertification)
                                   .font(.system(size: 20, weight: .bold, design: .default))
                                   .foregroundColor(.black)
                                   .padding()
                                   .background(
                                       RoundedRectangle(cornerRadius: 15)
                                           .fill(Color.white)
                                   )
                                   .overlay(
                                       RoundedRectangle(cornerRadius: 15)
                                           .stroke(Color.black, lineWidth: 1))
                               Button(action: {
                                   certifications.append(newCertification)
                                   newCertification = ""
                               }){Text("Add Certifications")
                                   
                                       .bold()
                                       .foregroundColor(.white)
                                       .padding()
                                       .frame(width: 220, height: 40)
                                       .background(Color(red: 0/255, green: 160/255, blue: 220/255))
                                       .cornerRadius(15.0)
                                       .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
                               }
                               
                               TextField("Skills", text: $newSkill)
                                   .font(.system(size: 20, weight: .bold, design: .default))
                                   .foregroundColor(.black)
                                   .padding()
                                   .background(
                                       RoundedRectangle(cornerRadius: 15)
                                           .fill(Color.white)
                                   )
                                   .overlay(
                                       RoundedRectangle(cornerRadius: 15)
                                           .stroke(Color.black, lineWidth: 1))
                               Button(action: {
                                   skill.append(newSkill)
                                   newCertification = ""
                               }){Text("Add Skills")
                                       .bold()
                                       .foregroundColor(.white)
                                       .padding()
                                       .frame(width: 220, height: 40)
                                       .background(Color(red: 0/255, green: 160/255, blue: 220/255))
                                       .cornerRadius(15.0)
                                       .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
                               }
                           }
                Button(action: {
                    let mentorBrainData = TheMentorBrain(
                        name: name,
                        headline: headline,
                        summary: summary,
                        experience: experiences.map { experience in
                            TheMentorBrain.Experience(title: experience, company: "", dates: "", responsibilities: [])
                        },
                        education: TheMentorBrain.Education(degree: "", university: "", dates: ""),
                        certifications: certifications,
                        skills: skill
                    )
                    
                    // Access Firestore and create a document in the "mentorBrains" collection
                    let db = Firestore.firestore()
                    db.collection("mentorBrains").addDocument(data: mentorBrainData.dictionaryRepresentation()) { error in
                        if let error = error {
                            // Handle error
                            print("Error adding mentor brain: \(error.localizedDescription)")
                        } else {
                            // Document added successfully
                            print("Mentor brain added successfully")
                        }
                    }
                }) {
                    Text("Submit")
                }
            }
        }
    }


struct TheMentorBrainInput_Previews: PreviewProvider {
    static var previews: some View {
        TheMentorBrainInput()
    }
}


extension TheMentorBrain {
    func dictionaryRepresentation() -> [String: Any] {
        var dictionary: [String: Any] = [:]
        dictionary["name"] = name
        dictionary["headline"] = headline
        dictionary["summary"] = summary
        dictionary["experiences"] = experience.map { experience in
            return [
                "title": experience.title,
                "company": experience.company,
                "dates": experience.dates,
                "responsibilities": experience.responsibilities
            ] as [String : Any]
        }
        dictionary["education"] = [
            "degree": education.degree,
            "university": education.university,
            "dates": education.dates
        ]
        dictionary["certifications"] = certifications
        dictionary["skills"] = skills
        return dictionary
    }
}






