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
            "summary": "Results-driven and highly skilled cybersecurity professional with a deep expertise in project management, risk assessment, and security strategy. Dedicated to ensuring regulatory compliance and mitigating potential risks through comprehensive security measures. Proven track record in incident response, conducting security audits, and performing vulnerability and penetration testing. Strong abilities in stakeholder management and team leadership, driving collaborative efforts to achieve cybersecurity objectives. Passionate about continuously enhancing security practices to safeguard critical assets and maintain the confidentiality, integrity, and availability of information systems",
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
            "summary": "Highly skilled and results-driven cybersecurity professional with a proven track record in leading the successful delivery of large-scale cybersecurity programs. Expertise in risk management, incident response, and security training. Dedicated to championing robust security measures and mitigating risks through the implementation of comprehensive security frameworks. Strong abilities in stakeholder management and team leadership, driving collaborative efforts to achieve cybersecurity objectives. Passionate about continuously enhancing security practices to safeguard critical assets and maintain the confidentiality, integrity, and availability of information systems.",
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
                        "Orchestrate the successful delivery of large-scale cybersecurity programs, ensuring seamless collaboration among cross-functional teams. This responsibility involves overseeing and coordinating various cybersecurity initiatives and projects to achieve the desired outcomes, such as implementing robust security measures, addressing vulnerabilities, and safeguarding critical systems and data.",
                        "Design and enforce robust security frameworks and best practices. Alex is responsible for developing comprehensive security frameworks and establishing best practices that align with industry standards and regulations. This includes defining security policies, procedures, and guidelines to protect against potential threats and ensure regulatory compliance",
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
        return profiles
    } catch {
        print("Error decoding JSON: \(error)")
        return []
    }
}
