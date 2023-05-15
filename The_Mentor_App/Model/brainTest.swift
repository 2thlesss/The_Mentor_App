//
//  BrainTest.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 5/12/23.
//
import Foundation

func brainTest() -> [TheMentorBrain] {
    let jsonData = """
    [
        {
                    "name": "Oliver Williams",
                    "headline": "Dynamic Cybersecurity Operations Manager | Fostering Cyber Resilience & Compliance",
                    "summary": "Innovative and proactive Cybersecurity Operations Manager with a strong background in managing and optimizing cybersecurity operations. Dedicated to fostering cyber resilience and ensuring compliance with industry standards. Skilled in steering day-to-day activities of security teams, driving the creation and updating of security protocols, and implementing effective security measures.",
                    "experience": [
                        {
                            "title": "Operations Manager, Cybersecurity Department",
                            "company": "RST Global",
                            "dates": "2020 - Present",
                            "responsibilities": [
                                "Steer the cybersecurity operations, managing day-to-day activities of the security team.",
                                "Drive the creation and updating of security protocols and procedures to strengthen cyber defenses.",
                                "Implement and oversee security measures to protect critical assets and systems.",
                                "Collaborate with cross-functional teams to educate about security best practices and raise awareness.",
                                "Monitor and analyze security incidents, conducting investigations and implementing appropriate incident response.",
                                "Lead efforts to ensure compliance with industry regulations and standards.",
                                "Stay up-to-date with emerging cybersecurity trends and technologies, evaluating their impact and relevance."
                            ]
                        },
                        {
                            "title": "Lead Security Engineer",
                            "company": "UVW Enterprises",
                            "dates": "2016 - 2020",
                            "responsibilities": [
                                "Played a key role in the design, testing, and implementation of security systems to protect company assets.",
                                "Collaborated with cross-functional teams to develop and implement security strategies and measures.",
                                "Conducted regular security assessments and vulnerability scans to identify and address potential risks.",
                                "Provided guidance and support to ensure compliance with security policies and standards.",
                                "Delivered training programs to educate employees about cybersecurity best practices."
                            ]
                        }
                    ],
                    "education": {
                        "degree": "Master of Science in Cybersecurity",
                        "university": "GHI University",
                        "dates": "2014 - 2016"
                    },
                    "certifications": [
                        "Certified Information Privacy Professional (CIPP)",
                        "Offensive Security Certified Professional (OSCP)",
                        "Certified ScrumMaster (CSM)"
                    ],
                    "skills": [
                        "Operations Management",
                        "Policy Development",
                        "Intrusion Detection",
                        "Security Engineering",
                        "Network Security",
                        "Data Protection",
                        "Incident Analysis",
                        "Penetration Testing",
                        "Team Building",
                        "Effective Communication"
                    ]
                }
    
            ]
    
    """.data(using: .utf8)!
    /// ends with ]}]
    do {
        let profiles = try JSONDecoder().decode([TheMentorBrain].self, from: jsonData)
        print(profiles)
        return profiles
    } catch {
        print("Error decoding JSON: \(error)")
        return []
    }
}
