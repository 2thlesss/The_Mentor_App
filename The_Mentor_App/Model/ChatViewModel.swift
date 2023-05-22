//
//  ChatViewModel.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 5/22/23.
//

import Firebase
import FirebaseAuth
import FirebaseFirestore
import Combine

class ChatViewModel: ObservableObject {
    @Published var messages: [Message] = []

    private let db = Firestore.firestore()
    private var messageListener: ListenerRegistration?

    init() {
        loadMessages()
    }

    func loadMessages() {
        db.collection(K.FStore.collectionName)
            .order(by: K.FStore.dateField)
            .addSnapshotListener { snapshot, error in
                if let error = error {
                    print("Error fetching messages: \(error)")
                    return
                }

                guard let documents = snapshot?.documents else {
                    print("No documents found")
                    return
                }

                self.messages = documents.compactMap { document in
                    let data = document.data()
                    let messageSender = data[K.FStore.senderField] as? String
                    let messageBody = data[K.FStore.bodyField] as? String
                    return Message(sender: messageSender!, body: messageBody!)
                }
            }
    }

    func sendMessage(_ messageBody: String) {
        if let messageSender = Auth.auth().currentUser?.email {
            db.collection(K.FStore.collectionName).addDocument(data: [
                K.FStore.senderField: messageSender,
                K.FStore.bodyField: messageBody,
                K.FStore.dateField: Date().timeIntervalSince1970
            ]) { error in
                if let error = error {
                    print("Error sending message: \(error)")
                } else {
                    print("Message sent successfully")
                }
            }
        }
    }

    func logout() {
        do {
            try Auth.auth().signOut()
            // Perform your navigation or handle logout completion here
        } catch let signOutError as NSError {
            print("Error signing out: \(signOutError.localizedDescription)")
        }
    }

    deinit {
        messageListener?.remove()
    }
}
