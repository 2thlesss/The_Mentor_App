//
//  CertsView.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 5/24/23.
//
import SwiftUI

struct CertsView: View {
    @Binding var certifications: [String]
    @State private var newCertification: String = ""

    var body: some View {
        VStack {
            TextFieldController(text: $newCertification, placeholder:"Add Certification")
            
            Button(action: {
                certifications.append(newCertification)
                newCertification = ""
            }) {
                ProfileButtonText(profileText: "Add Certification")
            }
            
            ScrollView {
                ForEach(certifications, id: \.self) { certification in
                    HStack {
                        Text(certification)
                        Spacer()
                        Button(action: {
                            certifications.removeAll(where: { $0 == certification })
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

struct CertsView_Previews: PreviewProvider {
    @State static var certifications = ["Cert 1", "Cert 2"]
    
    static var previews: some View {
        CertsView(certifications: $certifications)
    }
}
