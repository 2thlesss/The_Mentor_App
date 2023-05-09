//
//  ScrollView.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 5/5/23.
//

import SwiftUI

struct MyScrollView: View {
    @State private var inputText: String = ""
    @State private var items: [String] = []
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Enter item", text: $inputText)
                    .padding()
                Button("Add item") {
                    items.append(inputText)
                    inputText = ""
                }
                .padding()
                MyTableView(items: items)
            }
        }
    }
}

struct MyTableView: UIViewRepresentable {
    var items: [String]
    
    func makeUIView(context: Context) -> UITableView {
        let tableView = UITableView()
        tableView.delegate = context.coordinator
        tableView.dataSource = context.coordinator
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        return tableView
    }
    
    func updateUIView(_ uiView: UITableView, context: Context) {
        context.coordinator.items = items
        uiView.reloadData()
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(items: items)
    }
    
    class Coordinator: NSObject, UITableViewDelegate, UITableViewDataSource {
        var items: [String]
        
        init(items: [String]) {
            self.items = items
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return items.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
            cell.textLabel?.text = items[indexPath.row]
            return cell
        }
    }
}

struct MyScrollView_Previews: PreviewProvider {
    static var previews: some View {
        MyScrollView()
    }
}
