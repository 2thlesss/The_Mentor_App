//
//  LinkSSOView.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 5/16/23.
//

//import UIKit
//import HSLinkedINAuthenticator
//class ViewController: UIViewController, LinkedINAuthenticatorDataSource {
//    
//    var appOAuthUrl: String { "YOUR_URL_FROM_LINKEDIN" }
//    var scope: LinkedINGrantScope = .r_liteprofile
//    var clientId: String { "YOUR_CLIENT_ID_FROM_LINKEDIN" }
//    var clientSecret: String { "YOUR_CLIENT_SECRET_FROM_LINKEDIN" }
//    var viewControllerToPresentLogin: UIViewController { self }
//    let linkedINAuthenticator = LinkedINAuthenticator()
//    
//    let loginButton = UIButton()
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        LinkedINAuthenticator.sharedDataSource = self
//    }
//
//    @objc func getUserLinkedINProfilePicture() {
//        self.linkedINAuthenticator.fetchLinkedINProfilePictureURL { profileresponse in
//            switch profileresponse {
//            case .success(let response):
//                print(response)
//            case .failure(let error):
//                print(error)
//            }
//        }
//    }
//    
//    @objc func getLinkedINAccessToken() {
//        self.linkedINAuthenticator.fetchLinkedINAccessToken { response in
//            switch response {
//            case .success(let result):
//                print(result)
//            case .failure(let error):
//                print(error)
//            }
//        }
//    }
//    
//    @objc func getLinkedINProfile(){
//        self.linkedINAuthenticator.fetchLinkedInData { profileresponse in
//            switch profileresponse {
//            case .success(let response):
//                print(response)
//            case .failure(let error):
//                print(error)
//            }
//        }
//    }
//
//}
//
//struct LinkSSOView_Previews: PreviewProvider {
//    static var previews: some View {
//        LinkSSOView()
//    }
//}
