//
//  TheMentorBrain.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 5/12/23.
//

import Foundation
import Foundation

// MARK: - TheMentorBrain
struct TheMentorBrain: Codable {
    let name, headline, summary: String
    let experience: [Experience]
    let education: Education
    let certifications, skills: [String]
}

// MARK: - Education
struct Education: Codable {
    let degree, university, dates: String
}

// MARK: - Experience
struct Experience: Codable {
    let title, company, dates: String
    let responsibilities: [String]
}
