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
                },
    {
      "name": "Emily Davis",
      "headline": "Experienced Finance Manager | Driving Financial Excellence & Strategic Decision-Making",
      "summary": "Highly accomplished finance professional with a strong background in managing financial operations and driving strategic decision-making. Proven expertise in financial analysis, risk assessment, and budgeting. Committed to ensuring financial stability and optimizing profitability for organizations. Adept at implementing sound financial strategies and fostering cross-functional collaboration. Passionate about leveraging financial data to drive informed business decisions and support long-term growth.",
      "experience": [
        {
          "title": "Finance Manager",
          "company": "ABC Corporation",
          "dates": "2017 - Present",
          "responsibilities": [
            "Oversee financial operations, including budgeting, forecasting, and financial reporting, to support effective decision-making and achieve financial goals.",
            "Develop and implement financial strategies to optimize profitability, reduce costs, and maximize operational efficiency.",
            "Conduct thorough financial analysis to identify trends, risks, and opportunities, providing actionable recommendations to senior management.",
            "Collaborate with cross-functional teams to align financial objectives with business strategies and drive successful outcomes."
          ]
        },
        {
          "title": "Financial Analyst",
          "company": "XYZ Investments",
          "dates": "2014 - 2017",
          "responsibilities": [
            "Performed in-depth financial analysis, including valuation modeling and risk assessment, to support investment decision-making.",
            "Monitored market trends and conducted industry research to identify potential investment opportunities and risks.",
            "Prepared financial reports, presentations, and investment memos for executive management and clients.",
            "Assisted in the development of investment strategies and asset allocation recommendations."
          ]
        }
      ],
      "education": {
        "degree": "Master of Business Administration (MBA)",
        "university": "GHI Business School",
        "dates": "2012 - 2014"
      },
      "certifications": [
        "Chartered Financial Analyst (CFA)",
        "Certified Management Accountant (CMA)",
        "Financial Risk Manager (FRM)"
      ],
      "skills": [
        "Financial Analysis",
        "Budgeting and Forecasting",
        "Risk Assessment",
        "Financial Reporting",
        "Strategic Planning",
        "Investment Management",
        "Data Analysis",
        "Business Valuation",
        "Cross-functional Collaboration",
        "Presentation Skills"
      ]
    },
    {
      "name": "Sarah Thompson",
      "headline": "Marketing Manager | Driving Strategic Campaigns for Business Growth",
      "summary": "Highly skilled marketing professional with a proven track record in developing and implementing successful marketing strategies. Experienced in digital marketing, brand management, and campaign optimization. Strong analytical and creative skills to drive impactful marketing initiatives. Passionate about leveraging data-driven insights to deliver measurable results. Excellent communication and leadership abilities to collaborate effectively with cross-functional teams and achieve business objectives.",
      "experience": [
        {
          "title": "Marketing Manager",
          "company": "Global Solutions Inc.",
          "dates": "2015 - Present",
          "responsibilities": [
            "Develop and execute comprehensive marketing strategies to drive brand awareness and lead generation.",
            "Manage digital marketing campaigns, including SEO, SEM, email marketing, and social media advertising.",
            "Analyze market trends and customer insights to identify opportunities for new product launches and promotions.",
            "Collaborate with sales teams to develop sales enablement materials and support revenue growth."
          ]
        },
        {
          "title": "Marketing Specialist",
          "company": "ABC Marketing Agency",
          "dates": "2012 - 2015",
          "responsibilities": [
            "Assisted in the development and execution of marketing campaigns for various clients.",
            "Conducted market research and competitive analysis to identify target audiences and optimize campaign messaging.",
            "Managed social media accounts, created engaging content, and monitored performance metrics.",
            "Assisted in the organization of events and trade shows to promote client brands."
          ]
        }
      ],
      "education": {
        "degree": "Bachelor of Business Administration (BBA)",
        "university": "University of Marketing",
        "dates": "2008 - 2012"
      },
      "certifications": [
        "Google Ads Certification",
        "HubSpot Inbound Marketing Certification",
        "Social Media Marketing Certification"
      ],
      "skills": [
        "Marketing Strategy",
        "Digital Marketing",
        "Brand Management",
        "Campaign Optimization",
        "Market Research",
        "Data Analysis",
        "Content Creation",
        "Social Media Management",
        "Project Management",
        "Leadership"
      ]
    },
      {
      "name": "Olivia Adams",
      "headline": "Professional Musician | Creating Harmonies and Inspiring Audiences",
      "summary": "Talented and versatile musician with a passion for creating captivating melodies and captivating audiences. Experienced in performance, composition, and music production. Proficient in multiple instruments and genres. Dedicated to continuously honing musical skills and delivering memorable live performances. Collaborative and adaptable, with a deep appreciation for the transformative power of music.",
      "experience": [
        {
          "title": "Lead Vocalist and Guitarist",
          "company": "Harmony Junction",
          "dates": "2015 - Present",
          "responsibilities": [
            "Perform as the lead vocalist and guitarist for live shows, delivering captivating performances that engage and inspire audiences.",
            "Collaborate with band members to create original music and arrange covers in various genres.",
            "Contribute to the songwriting process, writing lyrics and melodies that resonate with listeners.",
            "Participate in studio recordings, ensuring high-quality sound production and artistic integrity."
          ]
        },
        {
          "title": "Session Musician",
          "company": "Studio Soundworks",
          "dates": "2012 - 2015",
          "responsibilities": [
            "Worked as a session musician for various recording projects, providing instrumental and vocal contributions.",
            "Collaborated with producers and artists to understand and execute their musical vision.",
            "Adapted playing style and technique to fit the requirements of different genres and musical projects.",
            "Maintained a professional and creative approach to deliver exceptional musical performances."
          ]
        }
      ],
      "education": {
        "degree": "Bachelor of Music",
        "university": "Melody University",
        "dates": "2008 - 2012"
      },
      "certifications": [
        "Music Theory and Composition",
        "Audio Engineering",
        "Live Performance Techniques"
      ],
      "skills": [
        "Vocals",
        "Guitar",
        "Songwriting",
        "Music Composition",
        "Music Production",
        "Live Performance",
        "Music Arrangement",
        "Collaboration",
        "Studio Recording",
        "Music Theory"
      ]
    },
    {
      "name": "Jennifer Thompson",
      "headline": "Passionate Educator | Empowering Students Through Engaging Learning Experiences",
      "summary": "Dedicated and enthusiastic educator committed to fostering a positive and inclusive learning environment. Experienced in curriculum development, instructional design, and student assessment. Skilled in adapting teaching strategies to meet diverse student needs. Strong communication and interpersonal skills to build meaningful connections with students, parents, and colleagues. Passionate about inspiring a love for learning and helping students reach their full potential.",
      "experience": [
        {
          "title": "High School Teacher",
          "company": "City Academy",
          "dates": "2010 - Present",
          "responsibilities": [
            "Develop and deliver engaging lessons aligned with curriculum standards to promote student learning and achievement.",
            "Utilize a variety of instructional techniques, resources, and technology to facilitate active learning and student engagement.",
            "Assess student progress and provide timely and constructive feedback to guide their learning journey.",
            "Collaborate with colleagues to develop and refine curriculum materials and instructional strategies."
          ]
        },
        {
          "title": "Middle School Teacher",
          "company": "Townsville Middle School",
          "dates": "2005 - 2010",
          "responsibilities": [
            "Created and implemented lesson plans across various subjects to meet curriculum objectives and student needs.",
            "Established a positive classroom environment that fostered student growth, respect, and inclusivity.",
            "Provided individualized support to students with diverse learning needs, adapting instruction and assessments accordingly.",
            "Communicated with parents regularly to discuss student progress, address concerns, and promote parental involvement."
          ]
        }
      ],
      "education": {
        "degree": "Bachelor of Education",
        "university": "Teacher's College",
        "dates": "2001 - 2005"
      },
      "certifications": [
        "Teaching License (Grades K-12)",
        "Special Education Certification",
        "Instructional Technology Certification"
      ],
      "skills": [
        "Curriculum Development",
        "Instructional Design",
        "Student Assessment",
        "Classroom Management",
        "Differentiated Instruction",
        "Parent-Teacher Communication",
        "Collaboration",
        "Technology Integration",
        "Student Motivation",
        "Problem-Solving"
      ]
    },
    {
      "name": "Alexandra Johnson",
      "headline": "Dedicated Lawyer | Providing Legal Expertise and Advocacy for Client Success",
      "summary": "Highly skilled lawyer with a strong background in legal practice and client representation. Experienced in various areas of law, including civil litigation, corporate law, and contract negotiation. Strong analytical and problem-solving skills to develop effective legal strategies. Excellent oral and written communication abilities to advocate for clients and navigate complex legal matters. Committed to upholding justice and achieving favorable outcomes for clients.",
      "experience": [
        {
          "title": "Senior Associate",
          "company": "Smith & Associates",
          "dates": "2015 - Present",
          "responsibilities": [
            "Manage a diverse caseload involving civil litigation, contract disputes, and regulatory compliance.",
            "Conduct legal research, draft pleadings, and prepare legal documents for court proceedings.",
            "Represent clients in negotiations, mediations, and court appearances, advocating for their best interests.",
            "Provide legal advice and counsel to clients, assessing risks and developing strategies to achieve favorable outcomes."
          ]
        },
        {
          "title": "Corporate Counsel",
          "company": "Global Enterprises Ltd.",
          "dates": "2012 - 2015",
          "responsibilities": [
            "Provided legal guidance on corporate governance, compliance, and contractual matters.",
            "Drafted and reviewed various commercial agreements, ensuring legal compliance and protecting company interests.",
            "Managed external legal counsel and assisted in the resolution of disputes and legal issues.",
            "Conducted legal research on industry regulations and advised senior management on potential legal risks."
          ]
        }
      ],
      "education": {
        "degree": "Juris Doctor (JD)",
        "university": "Law School",
        "dates": "2009 - 2012"
      },
      "certifications": [
        "Bar Admission",
        "Legal Writing and Research",
        "Mediation and Negotiation"
      ],
      "skills": [
        "Legal Research",
        "Litigation",
        "Contract Law",
        "Corporate Law",
        "Legal Writing",
        "Negotiation",
        "Advocacy",
        "Case Management",
        "Risk Assessment",
        "Client Counseling"
      ]
    },
    {
    "name": "Dr. Benjamin Evans",
    "headline": "Dedicated Physician | Providing Compassionate Care and Advancing Medical Research",
    "summary": "Compassionate and skilled physician with a commitment to delivering high-quality medical care. Experienced in diagnosing and treating a wide range of medical conditions. Strong communication and interpersonal skills to build trust and rapport with patients. Passionate about staying updated with the latest advancements in medicine and contributing to medical research. Committed to making a positive impact on the health and well-being of individuals and communities.",
    "experience": [
      {
        "title": "Internal Medicine Specialist",
        "company": "City General Hospital",
        "dates": "2010 - Present",
        "responsibilities": [
          "Diagnose and treat a diverse range of medical conditions, providing comprehensive care to patients.",
          "Develop personalized treatment plans and educate patients on managing their health conditions.",
          "Coordinate with specialists and healthcare professionals to ensure integrated and holistic patient care.",
          "Participate in medical rounds, conferences, and research activities to stay abreast of medical advancements."
        ]
      },
      {
        "title": "Medical Officer",
        "company": "Rural Health Clinic",
        "dates": "2006 - 2010",
        "responsibilities": [
          "Provided primary care services to patients of all ages, managing acute and chronic medical conditions.",
          "Performed routine check-ups, vaccinations, and preventive health screenings.",
          "Collaborated with community health organizations to promote health education and awareness.",
          "Participated in emergency medical services and provided immediate care in critical situations."
        ]
      }
    ],
    "education": {
      "degree": "Doctor of Medicine (MD)",
      "university": "School of Medicine",
      "dates": "2000 - 2006"
    },
    "certifications": [
      "Board Certified in Internal Medicine",
      "Advanced Cardiac Life Support (ACLS)",
      "Medical Ethics and Professionalism"
    ],
    "skills": [
      "Medical Diagnosis",
      "Patient Care",
      "Treatment Planning",
      "Health Education",
      "Clinical Research",
      "Communication",
      "Collaboration",
      "Critical Thinking",
      "Emergency Medicine",
      "Continuing Medical Education"
    ]
        },
    {
      "name": "Detective Michael Roberts",
      "headline": "Dedicated Criminal Investigator | Ensuring Justice and Public Safety",
      "summary": "Highly skilled detective with a strong background in criminal investigation and law enforcement. Experienced in solving complex cases and ensuring adherence to legal protocols. Proficient in evidence collection, crime scene analysis, and witness interrogation. Excellent analytical and problem-solving abilities to identify patterns and gather crucial information. Committed to upholding justice, protecting communities, and ensuring public safety.",
      "experience": [
        {
          "title": "Detective",
          "company": "City Police Department",
          "dates": "2015 - Present",
          "responsibilities": [
            "Conduct thorough investigations into various criminal cases, including homicides, robberies, and fraud.",
            "Gather and analyze evidence, interview witnesses, and identify suspects to build strong cases.",
            "Collaborate with forensic experts, legal professionals, and law enforcement agencies to solve complex cases.",
            "Prepare detailed reports and testify in court as a credible and reliable witness."
          ]
        },
        {
          "title": "Police Officer",
          "company": "County Sheriff's Office",
          "dates": "2010 - 2015",
          "responsibilities": [
            "Patrolled assigned areas to prevent crime, enforce laws, and respond to emergency situations.",
            "Conducted traffic stops, issued citations, and assisted in maintaining public order and safety.",
            "Responded to calls for service, investigated criminal activities, and made arrests when necessary.",
            "Provided support and assistance to fellow officers and participated in community outreach programs."
          ]
        }
      ],
      "education": {
        "degree": "Bachelor of Criminal Justice",
        "university": "Justice University",
        "dates": "2006 - 2010"
      },
      "certifications": [
        "Certified Crime Scene Investigator",
        "Interview and Interrogation Techniques",
        "Law Enforcement Firearms Training"
      ],
      "skills": [
        "Criminal Investigation",
        "Evidence Collection",
        "Crime Scene Analysis",
        "Witness Interrogation",
        "Case Management",
        "Crime Prevention",
        "Forensic Knowledge",
        "Legal Procedures",
        "Report Writing",
        "Critical Thinking"
      ]
    },
    {
      "name": "Sophia Anderson",
      "headline": "Passionate Architect | Designing Functional and Aesthetically Pleasing Spaces",
      "summary": "Highly creative and detail-oriented architect with a passion for creating inspiring architectural designs. Experienced in all stages of project development, from concept design to construction management. Skilled in utilizing design software and applying sustainable design principles. Strong communication and collaboration abilities to work effectively with clients, contractors, and project teams. Committed to delivering innovative and sustainable architectural solutions that enhance the built environment.",
      "experience": [
        {
          "title": "Senior Architect",
          "company": "Design Studio Inc.",
          "dates": "2015 - Present",
          "responsibilities": [
            "Lead design projects, overseeing the entire design process from concept development to construction documentation.",
            "Collaborate with clients to understand their vision, functional requirements, and aesthetic preferences.",
            "Create detailed architectural drawings, renderings, and 3D models using industry-standard software.",
            "Coordinate with engineering consultants and contractors to ensure design feasibility and adherence to specifications."
          ]
        },
        {
          "title": "Architectural Designer",
          "company": "BuildTech Architects",
          "dates": "2012 - 2015",
          "responsibilities": [
            "Contributed to the design development of various architectural projects, including residential and commercial buildings.",
            "Assisted in preparing architectural drawings, specifications, and construction documents.",
            "Conducted site visits to assess project progress and ensure compliance with design intent and building codes.",
            "Participated in client meetings and presented design proposals and solutions."
          ]
        }
      ],
      "education": {
        "degree": "Master of Architecture",
        "university": "Architectural Institute",
        "dates": "2009 - 2012"
      },
      "certifications": [
        "Licensed Architect",
        "LEED Accredited Professional",
        "AutoCAD Certification"
      ],
      "skills": [
        "Architectural Design",
        "Construction Documentation",
        "Building Codes and Regulations",
        "3D Modeling and Rendering",
        "Sustainable Design",
        "Project Management",
        "Collaboration",
        "Presentation Skills",
        "Problem-Solving",
        "Attention to Detail"
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
// if we want to add images in to this we need to add in a let image: String
// put in the "image": "imageName.jpg"
// have the images in the assests folder
// call the images in with Image(profile.image) .resizable() .scaledtofit etc etc over on the profile Detail View.
// I may use a system image for now just to experiement with placement and sizing.

