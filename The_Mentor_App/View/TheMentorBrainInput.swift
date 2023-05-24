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
    @State private var experiences: [TheMentorBrain.Experience] = []
    @State private var newExperience = TheMentorBrain.Experience(title: "", company: "", dates: "", responsibilities: [])

    @State private var certifications: [String] = []
    @State private var newCertification: String = ""
    @State private var skill: [String] = []
    @State private var newSkill: String = ""

    var body: some View {
        ZStack {
            BackgroundGradient()
            VStack {
                ScrollView {
                    TitleTextController(title: "Profile")
                    TextFieldController(text: $name, placeholder: "First name, Last Name")
                    TextFieldController(text: $headline, placeholder: "Headline")
                    TextFieldController(text: $summary, placeholder: "Summary")
                    ExpView(experiences: Binding<[Experience]>(
                        get: { experiences.map { Experience(title: $0.title, company: $0.company, dates: $0.dates, responsibilities: $0.responsibilities) } },
                        set: { experiences = $0.map { TheMentorBrain.Experience(title: $0.title, company: $0.company, dates: $0.dates, responsibilities: $0.responsibilities) } }
                    ))

                    CertsView(certifications: $certifications)
                    SkillsView(skills: $skill)
                }
            }
        }
        VStack {
                        Text("Review your profile")
                        
                        Button(action: {
                            let mentorBrainData = TheMentorBrain(
                                name: name,
                                headline: headline,
                                summary: summary,
                                experience: experiences,
                                education: TheMentorBrain.Education(degree: "", university: "", dates: ""),
                                certifications: certifications,
                                skills: skill
                            )
                            
                            let db = Firestore.firestore()
                            db.collection("mentorBrains").addDocument(data: mentorBrainData.dictionaryRepresentation()) { error in
                                if let error = error {
                                    print("Error adding mentor brain: \(error.localizedDescription)")
                                } else {
                                    print("Mentor brain added successfully")
                                }
                            }
                        }) {
                            Text("Submit")
                                .bold()
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: 220, height: 40)
                                .background(Color(red: 0/255, green: 160/255, blue: 220/255))
                                .cornerRadius(15.0)
                                .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
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
                    ] as [String: Any]
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
