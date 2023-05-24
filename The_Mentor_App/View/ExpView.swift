//
//  ExpView.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 5/24/23.
//

import SwiftUI
struct Experience: Identifiable {
    let id = UUID()
    var title: String = ""
    var company: String = ""
    var dates: String = ""
    var responsibilities: [String] = []
}


struct ExpView: View {
    @Binding var experiences: [Experience]
    @State private var newExperience = Experience()

    var body: some View {
        VStack {
            TextField("Title", text: $newExperience.title)
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
            
            TextField("Company", text: $newExperience.company)
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
            
            TextField("Dates", text: $newExperience.dates)
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
                newExperience = Experience()
            }) {
                ProfileButtonText(profileText: "Add Experience")
            }

            List {
                ForEach(experiences.indices, id: \.self) { index in
                    let experience = experiences[index]
                    ExperienceItemView(experience: experience) {
                        experiences.remove(at: index)
                    }
                }
            }
        }
    }
}



struct ExperienceItemView: View {
    let experience: Experience
    let onDelete: () -> Void

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(experience.title)
                .font(.headline)
            Text(experience.company)
                .font(.subheadline)
            Text(experience.dates)
                .font(.subheadline)
            
            ForEach(experience.responsibilities, id: \.self) { responsibility in
                Text(responsibility)
                    .font(.subheadline)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(15)
        .shadow(color: Color.black.opacity(0.3), radius: 10, x: 0, y: 5)
        .contextMenu {
            Button(action: onDelete) {
                Label("Delete", systemImage: "trash")
            }
        }
    }
}

struct ExpView_Previews: PreviewProvider {
    @State static var experiences: [Experience] = [
        Experience(title: "Experience 1", company: "Company 1", dates: "Dates 1", responsibilities: ["Responsibility 1"]),
        Experience(title: "Experience 2", company: "Company 2", dates: "Dates 2", responsibilities: ["Responsibility 2"])
    ]

    static var previews: some View {
        ExpView(experiences: $experiences)
    }
}
