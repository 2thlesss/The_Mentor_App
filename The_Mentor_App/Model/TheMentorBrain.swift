//
//  TheMentorBrain.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 5/12/23.
//
import Foundation
// rebuild this to the webflow CMS schema
    // check to see how we can pull the product schema vs the mentor schema

struct TheMentorBrain: Decodable {
 
    let name: String
    let headline: String
    let summary: String
    let experience: [Experience]
    let education: Education
    let certifications: [String]
    let skills: [String]
    
   

    struct Experience: Decodable {
        let title: String
        let company: String
        let dates: String
        let responsibilities: [String]
    }

    struct Education: Decodable {
        let degree: String
        let university: String
        let dates: String
    }
    
    static let sampleData: [TheMentorBrain] = [
        TheMentorBrain(
            
            name: "Emily Johnson",
            headline: "Experienced Cybersecurity Project Manager | Ensuring Digital Safety & Risk Mitigation",
            summary: "Results-driven Cybersecurity Project Manager with a proven track record...",
            experience: [
                TheMentorBrain.Experience(
                    title: "Project Manager, Cybersecurity Division",
                    company: "XYZ Corporation",
                    dates: "2018 - Present",
                    responsibilities: [
                        "Lead cross-functional teams in executing complex cybersecurity projects from initiation to completion.",
                        "Develop and implement comprehensive security strategies and policies..."
                    ]
                ),
                TheMentorBrain.Experience(
                    title: "Senior Security Analyst",
                    company: "ABC Corporation",
                    dates: "2015 - 2018",
                    responsibilities: [
                        "Conducted security assessments, vulnerability scans, and penetration tests...",
                        "Assisted in the development and implementation of security policies..."
                    ]
                )
            ],
            education: TheMentorBrain.Education(
                degree: "Bachelor of Science in Computer Science",
                university: "XYZ University",
                dates: "2011 - 2015"
            ),
            certifications: [
                "Certified Information Systems Security Professional (CISSP)",
                "Certified Ethical Hacker (CEH)",
                "Project Management Professional (PMP)"
            ],
            skills: [
                "Project Management",
                "Risk Assessment",
                "Security Strategy",
                "Regulatory Compliance",
                "Incident Response",
                "Security Audits",
                "Vulnerability Assessment",
                "Penetration Testing",
                "Stakeholder Management",
                "Team leadership"
            ]
            
        )
    ]
}

