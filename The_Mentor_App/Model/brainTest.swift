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
        },
    
        {
            "name": "Alex Thompson",
            "headline": "Dedicated Cybersecurity Program Manager | Championing Robust Security Measures & Mitigating Risks",
            "summary": "Highly motivated Cybersecurity Program Manager with a solid background...",
            "experience": [
                {
                    "title": "Program Manager, Cybersecurity Division",
                    "company": "LMN Technologies",
                    "dates": "2019 - Present",
                    "responsibilities": [
                        "Orchestrate the successful delivery of large-scale cybersecurity programs, ensuring seamless collaboration among cross-functional teams.",
                        "Design and enforce robust security frameworks and best practices..."
                    ]
                },
                {
                    "title": "Security Consultant",
                    "company": "OPQ Solutions",
                    "dates": "2016 - 2019",
                    "responsibilities": [
                        "Provided expert advice on security measures, risk mitigation, and incident response to clients...",
                        "Supported the implementation of security controls and policies..."
                    ]
                }
            ],
            "education": {
                "degree": "Bachelor of Science in Information Systems",
                "university": "DEF University",
                "dates": "2012 - 2016"
            },
            "certifications": [
                "Certified Information Security Manager (CISM)",
                "Certified Cloud Security Professional (CCSP)",
                "Agile Certified Practitioner (ACP)"
            ],
            "skills": [
                "Program Management",
                "Risk Management",
                "Cloud Security",
                "Data Privacy",
                "Incident Management",
                "Security Training",
                "Threat Intelligence",
                "Secure Software Development",
                "Vendor Management",
                "Communication"
            ]
        },
    
        {
            "name": "Oliver Williams",
            "headline": "Dynamic Cybersecurity Operations Manager | Fostering Cyber Resilience & Compliance",
            "summary": "Innovative and proactive Cybersecurity Operations Manager with a strong background...",
            "experience": [
                {
                    "title": "Operations Manager, Cybersecurity Department",
                    "company": "RST Global",
                    "dates": "2020 - Present",
                    "responsibilities": [
                        "Steer the cybersecurity operations, managing day-to-day activities of the security team.",
                        "Drive the creation and updating of security protocols and procedures..."
                    ]
                },
                {
                    "title": "Lead Security Engineer",
                    "company": "UVW Enterprises",
                    "dates": "2016 - 2020",
                    "responsibilities": [
                        "Played a key role in the design, testing, and implementation of security systems...",
                        "Collaborated with cross-functional teams to educate about security best practices..."
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
        return profiles
    } catch {
        print("Error decoding JSON: \(error)")
        return []
    }
}
