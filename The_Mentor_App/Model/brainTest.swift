//
//  BrainTest.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 5/12/23.
//

import Foundation

func brainTest() -> [TheMentorBrain] {
    
    let jsonData = """
{
    "name": "Emily Johnson",
    "headline": "Experienced Cybersecurity Project Manager | Ensuring Digital Safety & Risk Mitigation",
    "summary": "Results-driven Cybersecurity Project Manager with a proven track record...",
    "experience": [
        {
            "title": "Project Manager, Cybersecurity Division",
            "company": "XYZ Corporation",
            "dates": "2018 - Present",
            "responsibilities": [
                "Lead cross-functional teams in executing complex cybersecurity projects from initiation to completion.",
                "Develop and implement comprehensive security strategies and policies..."
            ]
        },
        {
            "title": "Senior Security Analyst",
            "company": "ABC Corporation",
            "dates": "2015 - 2018",
            "responsibilities": [
                "Conducted security assessments, vulnerability scans, and penetration tests...",
                "Assisted in the development and implementation of security policies..."
            ]
        }
    ],
    "education": {
        "degree": "Bachelor of Science in Computer Science",
        "university": "XYZ University",
        "dates": "2011 - 2015"
    },
    "certifications": [
        "Certified Information Systems Security Professional (CISSP)",
        "Certified Ethical Hacker (CEH)",
        "Project Management Professional (PMP)"
    ],
    "skills": [
        "Project Management",
        "Risk Assessment",
        "Security Strategy",
        "Regulatory Compliance",
        "Incident Response",
        "Security Audits",
        "Vulnerability Assessment",
        "Penetration Testing",
        "Stakeholder Management",
        "Team Leadership"
    ]
}
""".data(using: .utf8)!
    
    do {
          let profile = try JSONDecoder().decode(TheMentorBrain.self, from: jsonData)
          // Use the `profile` instance as needed
          print(profile.name)
          print(profile.headline)
          // ...
          return [] // Return an empty array or modify it to return actual instances of TheMentorBrain
      } catch {
          print("Error decoding JSON: \(error)")
          return [] // Return an empty array or handle the error appropriately
      }
  }
