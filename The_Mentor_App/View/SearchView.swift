//
//  SearchView.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 5/9/23.
//

import SwiftUI
class SearchFieldData : ObservableObject {
    @Published var jobField = ""
    @Published var jobSkill1 = ""
    @Published var jobSkill2 = ""
    @Published var jobSkill3 = ""
}


struct SearchView: View {
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @StateObject var searchFieldData = SearchFieldData()
    
    var body: some View {
       
        VStack{ TextFieldController(text: $searchFieldData.jobField, placeholder: "Deired Job Field")
            TextFieldController(text: $searchFieldData.jobSkill1, placeholder: "Skill")
            TextFieldController(text: $searchFieldData.jobSkill2, placeholder: "Skill")
            TextFieldController(text: $searchFieldData.jobSkill3, placeholder: "Skill")
        }
    }
   
    }

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
