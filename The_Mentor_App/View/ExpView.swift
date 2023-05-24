//
//  ExpView.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 5/24/23.
//

import SwiftUI

struct ExpView: View {
    @Binding var experiences: [String]
    @State private var newExperience: String = ""

    var body: some View {
        VStack {
            TextFieldController(text: $newExperience, placeholder:"Add Experience Bullet")
            
            Button(action: {
                experiences.append(newExperience)
                newExperience = ""
            }) {
                ProfileButtonText(profileText: "Add Experience")
            }
            
            ScrollView {
                ForEach(experiences, id: \.self) { experience in
                    HStack {
                        Text(experience)
                        Spacer()
                        Button(action: {
                            experiences.removeAll(where: { $0 == experience })
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
struct ExpView_Previews: PreviewProvider {
    @State static var experiences = ["Experience1", "Experience 2"]
    static var previews: some View {
    ExpView(experiences: $experiences)
    }
}
