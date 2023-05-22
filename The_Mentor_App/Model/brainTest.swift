//
//  BrainTest.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 5/12/23.
//
import Foundation

func brainTest() -> [TheMentorBrain] {
    guard let fileURL = Bundle.main.url(forResource: "testBrain", withExtension: "json") else {
        print("JSON file not found")
        return []
    }
    
    do {
        let jsonData = try Data(contentsOf: fileURL)
        let profiles = try JSONDecoder().decode([TheMentorBrain].self, from: jsonData)
        print(profiles)
        return profiles
    } catch {
        print("Error decoding JSON: \(error)")
        return []
    }
}



//import Foundation
//
//func brainTest() -> [TheMentorBrain] {
//    let jsonData = """
//    [
//    {
//        "name": "Oliver Williams",
//        "headline": "Dynamic Cybersecurity Operations Manager | Fostering Cyber Resilience & Compliance",
//        "summary": "Innovative and proactive Cybersecurity Operations Manager with a strong background in managing and optimizing cybersecurity operations. Dedicated to fostering cyber resilience and ensuring compliance with industry standards. Skilled in steering day-to-day activities of security teams, driving the creation and updating of security protocols, and implementing effective security measures.",
//        "experience": [{
//            "title": "Operations Manager, Cybersecurity Department",
//            "company": "RST Global",
//            "dates": "2020 - Present",
//            "responsibilities": [
//                "Steer the cybersecurity operations, managing day-to-day activities of the security team.",
//                "Drive the creation and updating of security protocols and procedures to strengthen cyber defenses.",
//                "Implement and oversee security measures to protect critical assets and systems.",
//                "Collaborate with cross-functional teams to educate about security best practices and raise awareness.",
//                "Monitor and analyze security incidents, conducting investigations and implementing appropriate incident response.",
//                "Lead efforts to ensure compliance with industry regulations and standards.",
//                "Stay up-to-date with emerging cybersecurity trends and technologies, evaluating their impact and relevance."
//            ]
//        },
//            {
//                "title": "Lead Security Engineer",
//                "company": "UVW Enterprises",
//                "dates": "2016 - 2020",
//                "responsibilities": [
//                    "Played a key role in the design, testing, and implementation of security systems to protect company assets.",
//                    "Collaborated with cross-functional teams to develop and implement security strategies and measures.",
//                    "Conducted regular security assessments and vulnerability scans to identify and address potential risks.",
//                    "Provided guidance and support to ensure compliance with security policies and standards.",
//                    "Delivered training programs to educate employees about cybersecurity best practices."
//                ]
//            }
//        ],
//        "education": {
//            "degree": "Master of Science in Cybersecurity",
//            "university": "GHI University",
//            "dates": "2014 - 2016"
//        },
//        "certifications": [
//            "Certified Information Privacy Professional (CIPP)",
//            "Offensive Security Certified Professional (OSCP)",
//            "Certified ScrumMaster (CSM)"
//        ],
//        "skills": [
//            "Operations Management",
//            "Policy Development",
//            "Intrusion Detection",
//            "Security Engineering",
//            "Network Security",
//            "Data Protection",
//            "Incident Analysis",
//            "Penetration Testing",
//            "Team Building",
//            "Effective Communication"
//        ]
//    },
//        {
//            "name": "Emily Davis",
//            "headline": "Experienced Finance Manager | Driving Financial Excellence & Strategic Decision-Making",
//            "summary": "Highly accomplished finance professional with a strong background in managing financial operations and driving strategic decision-making. Proven expertise in financial analysis, risk assessment, and budgeting. Committed to ensuring financial stability and optimizing profitability for organizations. Adept at implementing sound financial strategies and fostering cross-functional collaboration. Passionate about leveraging financial data to drive informed business decisions and support long-term growth.",
//            "experience": [{
//                "title": "Finance Manager",
//                "company": "ABC Corporation",
//                "dates": "2017 - Present",
//                "responsibilities": [
//                    "Oversee financial operations, including budgeting, forecasting, and financial reporting, to support effective decision-making and achieve financial goals.",
//                    "Develop and implement financial strategies to optimize profitability, reduce costs, and maximize operational efficiency.",
//                    "Conduct thorough financial analysis to identify trends, risks, and opportunities, providing actionable recommendations to senior management.",
//                    "Collaborate with cross-functional teams to align financial objectives with business strategies and drive successful outcomes."
//                ]
//            },
//                {
//                    "title": "Financial Analyst",
//                    "company": "XYZ Investments",
//                    "dates": "2014 - 2017",
//                    "responsibilities": [
//                        "Performed in-depth financial analysis, including valuation modeling and risk assessment, to support investment decision-making.",
//                        "Monitored market trends and conducted industry research to identify potential investment opportunities and risks.",
//                        "Prepared financial reports, presentations, and investment memos for executive management and clients.",
//                        "Assisted in the development of investment strategies and asset allocation recommendations."
//                    ]
//                }
//            ],
//            "education": {
//                "degree": "Master of Business Administration (MBA)",
//                "university": "GHI Business School",
//                "dates": "2012 - 2014"
//            },
//            "certifications": [
//                "Chartered Financial Analyst (CFA)",
//                "Certified Management Accountant (CMA)",
//                "Financial Risk Manager (FRM)"
//            ],
//            "skills": [
//                "Financial Analysis",
//                "Budgeting and Forecasting",
//                "Risk Assessment",
//                "Financial Reporting",
//                "Strategic Planning",
//                "Investment Management",
//                "Data Analysis",
//                "Business Valuation",
//                "Cross-functional Collaboration",
//                "Presentation Skills"
//            ]
//        },
//        {
//            "name": "Sarah Thompson",
//            "headline": "Marketing Manager | Driving Strategic Campaigns for Business Growth",
//            "summary": "Highly skilled marketing professional with a proven track record in developing and implementing successful marketing strategies. Experienced in digital marketing, brand management, and campaign optimization. Strong analytical and creative skills to drive impactful marketing initiatives. Passionate about leveraging data-driven insights to deliver measurable results. Excellent communication and leadership abilities to collaborate effectively with cross-functional teams and achieve business objectives.",
//            "experience": [{
//                "title": "Marketing Manager",
//                "company": "Global Solutions Inc.",
//                "dates": "2015 - Present",
//                "responsibilities": [
//                    "Develop and execute comprehensive marketing strategies to drive brand awareness and lead generation.",
//                    "Manage digital marketing campaigns, including SEO, SEM, email marketing, and social media advertising.",
//                    "Analyze market trends and customer insights to identify opportunities for new product launches and promotions.",
//                    "Collaborate with sales teams to develop sales enablement materials and support revenue growth."
//                ]
//            },
//                {
//                    "title": "Marketing Specialist",
//                    "company": "ABC Marketing Agency",
//                    "dates": "2012 - 2015",
//                    "responsibilities": [
//                        "Assisted in the development and execution of marketing campaigns for various clients.",
//                        "Conducted market research and competitive analysis to identify target audiences and optimize campaign messaging.",
//                        "Managed social media accounts, created engaging content, and monitored performance metrics.",
//                        "Assisted in the organization of events and trade shows to promote client brands."
//                    ]
//                }
//            ],
//            "education": {
//                "degree": "Bachelor of Business Administration (BBA)",
//                "university": "University of Marketing",
//                "dates": "2008 - 2012"
//            },
//            "certifications": [
//                "Google Ads Certification",
//                "HubSpot Inbound Marketing Certification",
//                "Social Media Marketing Certification"
//            ],
//            "skills": [
//                "Marketing Strategy",
//                "Digital Marketing",
//                "Brand Management",
//                "Campaign Optimization",
//                "Market Research",
//                "Data Analysis",
//                "Content Creation",
//                "Social Media Management",
//                "Project Management",
//                "Leadership"
//            ]
//        },
//        {
//            "name": "Olivia Adams",
//            "headline": "Professional Musician | Creating Harmonies and Inspiring Audiences",
//            "summary": "Talented and versatile musician with a passion for creating captivating melodies and captivating audiences. Experienced in performance, composition, and music production. Proficient in multiple instruments and genres. Dedicated to continuously honing musical skills and delivering memorable live performances. Collaborative and adaptable, with a deep appreciation for the transformative power of music.",
//            "experience": [{
//                "title": "Lead Vocalist and Guitarist",
//                "company": "Harmony Junction",
//                "dates": "2015 - Present",
//                "responsibilities": [
//                    "Perform as the lead vocalist and guitarist for live shows, delivering captivating performances that engage and inspire audiences.",
//                    "Collaborate with band members to create original music and arrange covers in various genres.",
//                    "Contribute to the songwriting process, writing lyrics and melodies that resonate with listeners.",
//                    "Participate in studio recordings, ensuring high-quality sound production and artistic integrity."
//                ]
//            },
//                {
//                    "title": "Session Musician",
//                    "company": "Studio Soundworks",
//                    "dates": "2012 - 2015",
//                    "responsibilities": [
//                        "Worked as a session musician for various recording projects, providing instrumental and vocal contributions.",
//                        "Collaborated with producers and artists to understand and execute their musical vision.",
//                        "Adapted playing style and technique to fit the requirements of different genres and musical projects.",
//                        "Maintained a professional and creative approach to deliver exceptional musical performances."
//                    ]
//                }
//            ],
//            "education": {
//                "degree": "Bachelor of Music",
//                "university": "Melody University",
//                "dates": "2008 - 2012"
//            },
//            "certifications": [
//                "Music Theory and Composition",
//                "Audio Engineering",
//                "Live Performance Techniques"
//            ],
//            "skills": [
//                "Vocals",
//                "Guitar",
//                "Songwriting",
//                "Music Composition",
//                "Music Production",
//                "Live Performance",
//                "Music Arrangement",
//                "Collaboration",
//                "Studio Recording",
//                "Music Theory"
//            ]
//        },
//        {
//            "name": "Jennifer Thompson",
//            "headline": "Passionate Educator | Empowering Students Through Engaging Learning Experiences",
//            "summary": "Dedicated and enthusiastic educator committed to fostering a positive and inclusive learning environment. Experienced in curriculum development, instructional design, and student assessment. Skilled in adapting teaching strategies to meet diverse student needs. Strong communication and interpersonal skills to build meaningful connections with students, parents, and colleagues. Passionate about inspiring a love for learning and helping students reach their full potential.",
//            "experience": [{
//                "title": "High School Teacher",
//                "company": "City Academy",
//                "dates": "2010 - Present",
//                "responsibilities": [
//                    "Develop and deliver engaging lessons aligned with curriculum standards to promote student learning and achievement.",
//                    "Utilize a variety of instructional techniques, resources, and technology to facilitate active learning and student engagement.",
//                    "Assess student progress and provide timely and constructive feedback to guide their learning journey.",
//                    "Collaborate with colleagues to develop and refine curriculum materials and instructional strategies."
//                ]
//            },
//                {
//                    "title": "Middle School Teacher",
//                    "company": "Townsville Middle School",
//                    "dates": "2005 - 2010",
//                    "responsibilities": [
//                        "Created and implemented lesson plans across various subjects to meet curriculum objectives and student needs.",
//                        "Established a positive classroom environment that fostered student growth, respect, and inclusivity.",
//                        "Provided individualized support to students with diverse learning needs, adapting instruction and assessments accordingly.",
//                        "Communicated with parents regularly to discuss student progress, address concerns, and promote parental involvement."
//                    ]
//                }
//            ],
//            "education": {
//                "degree": "Bachelor of Education",
//                "university": "Teacher's College",
//                "dates": "2001 - 2005"
//            },
//            "certifications": [
//                "Teaching License (Grades K-12)",
//                "Special Education Certification",
//                "Instructional Technology Certification"
//            ],
//            "skills": [
//                "Curriculum Development",
//                "Instructional Design",
//                "Student Assessment",
//                "Classroom Management",
//                "Differentiated Instruction",
//                "Parent-Teacher Communication",
//                "Collaboration",
//                "Technology Integration",
//                "Student Motivation",
//                "Problem-Solving"
//            ]
//        },
//        {
//            "name": "Alexandra Johnson",
//            "headline": "Dedicated Lawyer | Providing Legal Expertise and Advocacy for Client Success",
//            "summary": "Highly skilled lawyer with a strong background in legal practice and client representation. Experienced in various areas of law, including civil litigation, corporate law, and contract negotiation. Strong analytical and problem-solving skills to develop effective legal strategies. Excellent oral and written communication abilities to advocate for clients and navigate complex legal matters. Committed to upholding justice and achieving favorable outcomes for clients.",
//            "experience": [{
//                "title": "Senior Associate",
//                "company": "Smith & Associates",
//                "dates": "2015 - Present",
//                "responsibilities": [
//                    "Manage a diverse caseload involving civil litigation, contract disputes, and regulatory compliance.",
//                    "Conduct legal research, draft pleadings, and prepare legal documents for court proceedings.",
//                    "Represent clients in negotiations, mediations, and court appearances, advocating for their best interests.",
//                    "Provide legal advice and counsel to clients, assessing risks and developing strategies to achieve favorable outcomes."
//                ]
//            },
//                {
//                    "title": "Corporate Counsel",
//                    "company": "Global Enterprises Ltd.",
//                    "dates": "2012 - 2015",
//                    "responsibilities": [
//                        "Provided legal guidance on corporate governance, compliance, and contractual matters.",
//                        "Drafted and reviewed various commercial agreements, ensuring legal compliance and protecting company interests.",
//                        "Managed external legal counsel and assisted in the resolution of disputes and legal issues.",
//                        "Conducted legal research on industry regulations and advised senior management on potential legal risks."
//                    ]
//                }
//            ],
//            "education": {
//                "degree": "Juris Doctor (JD)",
//                "university": "Law School",
//                "dates": "2009 - 2012"
//            },
//            "certifications": [
//                "Bar Admission",
//                "Legal Writing and Research",
//                "Mediation and Negotiation"
//            ],
//            "skills": [
//                "Legal Research",
//                "Litigation",
//                "Contract Law",
//                "Corporate Law",
//                "Legal Writing",
//                "Negotiation",
//                "Advocacy",
//                "Case Management",
//                "Risk Assessment",
//                "Client Counseling"
//            ]
//        },
//        {
//            "name": "Dr. Benjamin Evans",
//            "headline": "Dedicated Physician | Providing Compassionate Care and Advancing Medical Research",
//            "summary": "Compassionate and skilled physician with a commitment to delivering high-quality medical care. Experienced in diagnosing and treating a wide range of medical conditions. Strong communication and interpersonal skills to build trust and rapport with patients. Passionate about staying updated with the latest advancements in medicine and contributing to medical research. Committed to making a positive impact on the health and well-being of individuals and communities.",
//            "experience": [{
//                "title": "Internal Medicine Specialist",
//                "company": "City General Hospital",
//                "dates": "2010 - Present",
//                "responsibilities": [
//                    "Diagnose and treat a diverse range of medical conditions, providing comprehensive care to patients.",
//                    "Develop personalized treatment plans and educate patients on managing their health conditions.",
//                    "Coordinate with specialists and healthcare professionals to ensure integrated and holistic patient care.",
//                    "Participate in medical rounds, conferences, and research activities to stay abreast of medical advancements."
//                ]
//            },
//                {
//                    "title": "Medical Officer",
//                    "company": "Rural Health Clinic",
//                    "dates": "2006 - 2010",
//                    "responsibilities": [
//                        "Provided primary care services to patients of all ages, managing acute and chronic medical conditions.",
//                        "Performed routine check-ups, vaccinations, and preventive health screenings.",
//                        "Collaborated with community health organizations to promote health education and awareness.",
//                        "Participated in emergency medical services and provided immediate care in critical situations."
//                    ]
//                }
//            ],
//            "education": {
//                "degree": "Doctor of Medicine (MD)",
//                "university": "School of Medicine",
//                "dates": "2000 - 2006"
//            },
//            "certifications": [
//                "Board Certified in Internal Medicine",
//                "Advanced Cardiac Life Support (ACLS)",
//                "Medical Ethics and Professionalism"
//            ],
//            "skills": [
//                "Medical Diagnosis",
//                "Patient Care",
//                "Treatment Planning",
//                "Health Education",
//                "Clinical Research",
//                "Communication",
//                "Collaboration",
//                "Critical Thinking",
//                "Emergency Medicine",
//                "Continuing Medical Education"
//            ]
//        },
//        {
//            "name": "Detective Michael Roberts",
//            "headline": "Dedicated Criminal Investigator | Ensuring Justice and Public Safety",
//            "summary": "Highly skilled detective with a strong background in criminal investigation and law enforcement. Experienced in solving complex cases and ensuring adherence to legal protocols. Proficient in evidence collection, crime scene analysis, and witness interrogation. Excellent analytical and problem-solving abilities to identify patterns and gather crucial information. Committed to upholding justice, protecting communities, and ensuring public safety.",
//            "experience": [{
//                "title": "Detective",
//                "company": "City Police Department",
//                "dates": "2015 - Present",
//                "responsibilities": [
//                    "Conduct thorough investigations into various criminal cases, including homicides, robberies, and fraud.",
//                    "Gather and analyze evidence, interview witnesses, and identify suspects to build strong cases.",
//                    "Collaborate with forensic experts, legal professionals, and law enforcement agencies to solve complex cases.",
//                    "Prepare detailed reports and testify in court as a credible and reliable witness."
//                ]
//            },
//                {
//                    "title": "Police Officer",
//                    "company": "County Sheriff's Office",
//                    "dates": "2010 - 2015",
//                    "responsibilities": [
//                        "Patrolled assigned areas to prevent crime, enforce laws, and respond to emergency situations.",
//                        "Conducted traffic stops, issued citations, and assisted in maintaining public order and safety.",
//                        "Responded to calls for service, investigated criminal activities, and made arrests when necessary.",
//                        "Provided support and assistance to fellow officers and participated in community outreach programs."
//                    ]
//                }
//            ],
//            "education": {
//                "degree": "Bachelor of Criminal Justice",
//                "university": "Justice University",
//                "dates": "2006 - 2010"
//            },
//            "certifications": [
//                "Certified Crime Scene Investigator",
//                "Interview and Interrogation Techniques",
//                "Law Enforcement Firearms Training"
//            ],
//            "skills": [
//                "Criminal Investigation",
//                "Evidence Collection",
//                "Crime Scene Analysis",
//                "Witness Interrogation",
//                "Case Management",
//                "Crime Prevention",
//                "Forensic Knowledge",
//                "Legal Procedures",
//                "Report Writing",
//                "Critical Thinking"
//            ]
//        },
//        {
//            "name": "Sophia Anderson",
//            "headline": "Passionate Architect | Designing Functional and Aesthetically Pleasing Spaces",
//            "summary": "Highly creative and detail-oriented architect with a passion for creating inspiring architectural designs. Experienced in all stages of project development, from concept design to construction management. Skilled in utilizing design software and applying sustainable design principles. Strong communication and collaboration abilities to work effectively with clients, contractors, and project teams. Committed to delivering innovative and sustainable architectural solutions that enhance the built environment.",
//            "experience": [{
//                "title": "Senior Architect",
//                "company": "Design Studio Inc.",
//                "dates": "2015 - Present",
//                "responsibilities": [
//                    "Lead design projects, overseeing the entire design process from concept development to construction documentation.",
//                    "Collaborate with clients to understand their vision, functional requirements, and aesthetic preferences.",
//                    "Create detailed architectural drawings, renderings, and 3D models using industry-standard software.",
//                    "Coordinate with engineering consultants and contractors to ensure design feasibility and adherence to specifications."
//                ]
//            },
//                {
//                    "title": "Architectural Designer",
//                    "company": "BuildTech Architects",
//                    "dates": "2012 - 2015",
//                    "responsibilities": [
//                        "Contributed to the design development of various architectural projects, including residential and commercial buildings.",
//                        "Assisted in preparing architectural drawings, specifications, and construction documents.",
//                        "Conducted site visits to assess project progress and ensure compliance with design intent and building codes.",
//                        "Participated in client meetings and presented design proposals and solutions."
//                    ]
//                }
//            ],
//            "education": {
//                "degree": "Master of Architecture",
//                "university": "Architectural Institute",
//                "dates": "2009 - 2012"
//            },
//            "certifications": [
//                "Licensed Architect",
//                "LEED Accredited Professional",
//                "AutoCAD Certification"
//            ],
//            "skills": [
//                "Architectural Design",
//                "Construction Documentation",
//                "Building Codes and Regulations",
//                "3D Modeling and Rendering",
//                "Sustainable Design",
//                "Project Management",
//                "Collaboration",
//                "Presentation Skills",
//                "Problem-Solving",
//                "Attention to Detail"
//            ]
//        },
//        {
//            "name": "Dr. Sarah O'Mally",
//            "headline": "Experienced Medical Professional | Providing Compassionate Care & Leading Healthcare Initiatives",
//            "summary": "Highly skilled and compassionate medical professional with a deep commitment to patient well-being and a proven track record of leading healthcare initiatives. Skilled in diagnosing and treating various medical conditions, managing patient care plans, and collaborating with interdisciplinary teams. Dedicated to staying updated with the latest medical advancements and providing evidence-based treatments. Excellent communicator with a strong ability to connect with patients, families, and colleagues.",
//            "experience": [{
//                "title": "Chief of Medicine",
//                "company": "City General Hospital",
//                "dates": "2018 - Present",
//                "responsibilities": [
//                    "Oversee and manage medical services in the hospital, ensuring high-quality care delivery and patient safety.",
//                    "Lead and coordinate interdisciplinary teams of doctors, nurses, and support staff to optimize patient outcomes.",
//                    "Develop and implement hospital policies and procedures to maintain compliance with regulatory standards.",
//                    "Collaborate with medical staff to review and enhance patient care protocols and treatment guidelines."
//                ]
//            },
//                {
//                    "title": "Internal Medicine Specialist",
//                    "company": "ABC Medical Center",
//                    "dates": "2014 - 2018",
//                    "responsibilities": [
//                        "Conduct comprehensive medical examinations, diagnose illnesses, and develop personalized treatment plans.",
//                        "Manage chronic conditions and provide preventive care to promote patients' long-term health and well-being.",
//                        "Collaborate with specialists to coordinate complex patient care and ensure holistic treatment approaches.",
//                        "Educate patients and their families on medical conditions, treatment options, and self-care practices."
//                    ]
//                }
//            ],
//            "education": {
//                "degree": "Doctor of Medicine (MD)",
//                "university": "XYZ Medical School",
//                "dates": "2008 - 2014"
//            },
//            "certifications": [
//                "Board Certified in Internal Medicine",
//                "Advanced Cardiac Life Support (ACLS)",
//                "Pediatric Advanced Life Support (PALS)"
//            ],
//            "skills": [
//                "Diagnosis and Treatment",
//                "Patient Care Management",
//                "Interdisciplinary Collaboration",
//                "Medical Research",
//                "Evidence-Based Medicine",
//                "Patient Education",
//                "Communication Skills",
//                "Leadership",
//                "Quality Improvement",
//                "Emergency Medicine"
//            ]
//        },
//        {
//            "name": "Dr. Michael Castillo",
//            "headline": "Data Scientist | Driving Data-Driven Insights for Business Growth",
//            "summary": "Highly skilled data scientist with a strong background in leveraging data to drive actionable insights and support business decision-making. Proficient in statistical analysis, machine learning, and data visualization. Experienced in developing predictive models and optimizing algorithms. Passionate about extracting meaningful patterns from complex datasets and translating them into business solutions.",
//            "experience": [{
//                "title": "Data Scientist",
//                "company": "Tech Solutions Inc.",
//                "dates": "2016 - Present",
//                "responsibilities": [
//                    "Develop predictive models and algorithms to identify patterns and trends in large datasets.",
//                    "Design and implement data analysis pipelines to extract valuable insights for business stakeholders.",
//                    "Collaborate with cross-functional teams to define data requirements and align analytics initiatives with business objectives.",
//                    "Present findings and recommendations to senior management and guide data-driven decision-making."
//                ]
//            },
//                {
//                    "title": "Research Assistant",
//                    "company": "Data Science Lab",
//                    "dates": "2014 - 2016",
//                    "responsibilities": [
//                        "Conduct research on machine learning algorithms and explore new techniques for data analysis.",
//                        "Analyze experimental data and assist in developing models to solve complex research problems.",
//                        "Prepare research papers and present findings at conferences and workshops.",
//                        "Collaborate with graduate students and professors on data-driven research projects."
//                    ]
//                }
//            ],
//            "education": {
//                "degree": "Ph.D. in Computer Science",
//                "university": "University of Science and Technology",
//                "dates": "2010 - 2014"
//            },
//            "certifications": [
//                "Certified Data Scientist (CDS)",
//                "Machine Learning Professional (MLP)",
//                "Big Data Analytics Certification"
//            ],
//            "skills": [
//                "Statistical Analysis",
//                "Machine Learning",
//                "Data Visualization",
//                "Python Programming",
//                "Predictive Modeling",
//                "Data Mining",
//                "Algorithm Development",
//                "Big Data Technologies",
//                "Business Intelligence",
//                "Communication Skills"
//            ]
//        },
//        {
//            "name": "Alexandra Rodriguez",
//            "headline": "Marketing Analyst | Driving Data-Backed Insights for Effective Marketing Strategies",
//            "summary": "Analytically-minded marketing professional with expertise in leveraging data to drive impactful marketing strategies. Skilled in marketing analytics, data interpretation, and market research. Proficient in utilizing tools and techniques to gather, analyze, and visualize data for actionable insights. Passionate about optimizing marketing campaigns and improving ROI through data-driven decision-making. Strong problem-solving and communication skills.",
//            "experience": [{
//                "title": "Marketing Analyst",
//                "company": "ABC Marketing Solutions",
//                "dates": "2018 - Present",
//                "responsibilities": [
//                    "Conduct comprehensive market research and competitive analysis to identify market trends and consumer behavior patterns.",
//                    "Analyze marketing campaign data to measure performance, identify areas for improvement, and make data-driven recommendations.",
//                    "Develop and maintain marketing dashboards and reports for key stakeholders, providing insights on marketing ROI and KPIs.",
//                    "Collaborate with cross-functional teams to develop marketing strategies and optimize targeting and segmentation approaches."
//                ]
//            },
//                {
//                    "title": "Market Research Assistant",
//                    "company": "XYZ Research Agency",
//                    "dates": "2016 - 2018",
//                    "responsibilities": [
//                        "Assisted in designing and conducting market research studies, including surveys, focus groups, and interviews.",
//                        "Performed data analysis using statistical tools and techniques to derive meaningful insights.",
//                        "Generated reports and presentations summarizing research findings and recommendations.",
//                        "Contributed to the development of research proposals and project plans."
//                    ]
//                }
//            ],
//            "education": {
//                "degree": "Bachelor of Science in Marketing",
//                "university": "University of XYZ",
//                "dates": "2012 - 2016"
//            },
//            "certifications": [
//                "Google Analytics Certified",
//                "Market Research Society (MRS) Certified Researcher"
//            ],
//            "skills": [
//                "Marketing Analytics",
//                "Data Interpretation",
//                "Market Research",
//                "Data Visualization",
//                "Marketing Dashboards",
//                "Statistical Analysis",
//                "Competitive Analysis",
//                "Marketing Strategy",
//                "Communication Skills",
//                "Problem-Solving"
//            ]
//        },
//        {
//            "name": "Inigo Montoya",
//            "headline": "Versatile Musician | Creating Melodies that Touch the Soul",
//            "summary": "Talented and versatile musician with a passion for creating captivating melodies that resonate with audiences. Proficient in multiple instruments and genres, including classical, jazz, and contemporary music. Skilled composer and arranger with a deep understanding of musical theory and harmony. Dedicated to continuous learning and pushing creative boundaries to deliver exceptional musical performances.",
//            "experience": [{
//                "title": "Freelance Musician",
//                "company": "Self-Employed",
//                "dates": "2015 - Present",
//                "responsibilities": [
//                    "Perform live music at various venues, including concerts, weddings, and private events.",
//                    "Collaborate with other musicians and bands to create harmonious and memorable performances.",
//                    "Compose and arrange original music for different projects and ensembles.",
//                    "Provide music lessons and mentorship to aspiring musicians."
//                ]
//            },
//                {
//                    "title": "Session Musician",
//                    "company": "Studio Music Group",
//                    "dates": "2012 - 2015",
//                    "responsibilities": [
//                        "Recorded instrumental tracks for artists and bands across various genres.",
//                        "Collaborated with producers and music directors to bring their creative visions to life.",
//                        "Adapted and performed music in different styles to suit the specific needs of each recording session.",
//                        "Contributed to the musical arrangement and production process."
//                    ]
//                }
//            ],
//            "education": {
//                "degree": "Bachelor of Music in Performance",
//                "university": "XYZ School of Music",
//                "dates": "2008 - 2012"
//            },
//            "certifications": [
//                "Music Theory and Harmony Certification",
//                "Advanced Jazz Improvisation Certification"
//            ],
//            "skills": [
//                "Instrumental Proficiency (Piano, Violin, Guitar)",
//                "Composition and Arrangement",
//                "Live Performance",
//                "Music Recording and Production",
//                "Music Theory",
//                "Improvisation",
//                "Collaboration",
//                "Creative Expression",
//                "Adaptability",
//                "Music Education"
//            ]
//        },
//        {
//            "name": "Leah Johnson",
//            "headline": "Passionate Architect | Creating Inspiring Spaces with Innovative Designs",
//            "summary": "Passionate and visionary architect with a strong commitment to creating inspiring spaces through innovative and sustainable designs. Experienced in leading architectural projects from concept to completion, ensuring adherence to quality, budget, and timeline. Skilled in utilizing advanced design software and technologies to visualize and communicate architectural concepts. Excellent collaborator with a keen eye for detail and a focus on delivering exceptional client experiences.",
//            "experience": [{
//                "title": "Senior Architect",
//                "company": "ABC Architecture Firm",
//                "dates": "2012 - Present",
//                "responsibilities": [
//                    "Lead architectural projects, overseeing the design process from initial concept development to final construction documentation.",
//                    "Collaborate with clients to understand their needs, translate their vision into architectural designs, and ensure client satisfaction.",
//                    "Manage project teams, including architects, engineers, and contractors, to ensure successful project execution.",
//                    "Utilize advanced architectural software and technologies to create 3D models, renderings, and virtual walkthroughs."
//                ]
//            },
//                {
//                    "title": "Junior Architect",
//                    "company": "XYZ Design Studio",
//                    "dates": "2009 - 2012",
//                    "responsibilities": [
//                        "Contributed to the design and development of architectural projects, focusing on concept creation and detailing.",
//                        "Assisted in producing construction drawings and specifications in compliance with building codes and regulations.",
//                        "Conducted site visits to monitor construction progress and ensure design intent implementation.",
//                        "Collaborated with project teams to deliver high-quality architectural solutions within specified timeframes."
//                    ]
//                }
//            ],
//            "education": {
//                "degree": "Master of Architecture",
//                "university": "GHI School of Architecture",
//                "dates": "2007 - 2009"
//            },
//            "certifications": [
//                "Registered Architect (RA)",
//                "LEED Accredited Professional",
//                "AutoCAD Certified Professional"
//            ],
//            "skills": [
//                "Architectural Design",
//                "Concept Development",
//                "Building Information Modeling (BIM)",
//                "Construction Documentation",
//                "Project Management",
//                "Sustainable Design",
//                "3D Modeling and Rendering",
//                "Building Codes and Regulations",
//                "Collaboration",
//                "Presentation Skills"
//            ]
//        },
//        {
//            "name": "Cecelia Evans",
//            "headline": "Creative Animator | Bringing Imagination to Life through Captivating Visuals",
//            "summary": "Highly creative and skilled animator with a passion for bringing imagination to life through captivating visual storytelling. Proficient in both 2D and 3D animation techniques, with expertise in industry-leading software. Experienced in all stages of the animation production process, from concept development to final rendering. Detail-oriented and adaptable, dedicated to delivering visually stunning animations that engage and inspire audiences.",
//            "experience": [{
//                "title": "Senior Animator",
//                "company": "ABC Animation Studios",
//                "dates": "2015 - Present",
//                "responsibilities": [
//                    "Lead animation projects, collaborating with directors and designers to develop compelling visual narratives.",
//                    "Create high-quality character animations and motion graphics using industry-standard software.",
//                    "Work closely with the production team to ensure animations meet technical and artistic requirements.",
//                    "Mentor and guide junior animators, providing constructive feedback and fostering their professional growth."
//                ]
//            },
//                {
//                    "title": "Junior Animator",
//                    "company": "XYZ Animation Studio",
//                    "dates": "2012 - 2015",
//                    "responsibilities": [
//                        "Assisted senior animators in creating and refining character animations and special effects.",
//                        "Participated in brainstorming sessions to contribute ideas and concepts for animation projects.",
//                        "Collaborated with the production team to meet project deadlines and deliver high-quality animations.",
//                        "Continuously improved animation skills by staying updated with the latest industry trends and techniques."
//                    ]
//                }
//            ],
//            "education": {
//                "degree": "Bachelor of Fine Arts in Animation",
//                "university": "University of XYZ",
//                "dates": "2008 - 2012"
//            },
//            "certifications": [
//                "Certified Animation Professional",
//                "Advanced 3D Animation Techniques"
//            ],
//            "skills": [
//                "2D Animation",
//                "3D Animation",
//                "Character Animation",
//                "Motion Graphics",
//                "Storyboarding",
//                "Digital Art",
//                "Visual Effects",
//                "Industry-Standard Software (Adobe Creative Suite, Autodesk Maya)",
//                "Collaboration",
//                "Time Management"
//            ]
//        },
//        {
//            "name": "John Smith",
//            "headline": "Skilled Handyman | Providing Reliable Solutions for Home Improvement Needs",
//            "summary": "Experienced and skilled handyman with a passion for providing reliable solutions to meet diverse home improvement needs. Proficient in a wide range of repair and maintenance tasks, including carpentry, plumbing, electrical work, and general handyman services. Detail-oriented and customer-focused, dedicated to delivering high-quality workmanship and exceptional service. Strong problem-solving abilities and a commitment to ensuring client satisfaction.",
//            "experience": [{
//                "title": "Handyman",
//                "company": "Home Repair Solutions",
//                "dates": "2010 - Present",
//                "responsibilities": [
//                    "Perform a variety of repair and maintenance tasks, including carpentry, plumbing, electrical work, painting, and general handyman services.",
//                    "Assess and troubleshoot issues to determine the most effective solutions and ensure efficient repairs.",
//                    "Communicate with clients to understand their specific needs and provide professional recommendations.",
//                    "Maintain a clean and safe work environment, adhering to industry standards and regulations."
//                ]
//            },
//                {
//                    "title": "Maintenance Technician",
//                    "company": "Property Management Company",
//                    "dates": "2008 - 2010",
//                    "responsibilities": [
//                        "Conducted routine inspections and performed preventive maintenance tasks for residential and commercial properties.",
//                        "Responded to maintenance requests and resolved issues in a timely and efficient manner.",
//                        "Collaborated with contractors and suppliers to coordinate repairs and obtain necessary materials.",
//                        "Assisted in the installation and repair of HVAC systems, plumbing fixtures, and electrical components."
//                    ]
//                }
//            ],
//            "education": {
//                "degree": "High School Diploma",
//                "university": "ABC High School",
//                "dates": "2004 - 2008"
//            },
//            "certifications": [
//                "Licensed Handyman",
//                "First Aid and CPR Certified"
//            ],
//            "skills": [
//                "Carpentry",
//                "Plumbing",
//                "Electrical Work",
//                "Painting",
//                "General Repairs",
//                "Problem-Solving",
//                "Customer Service",
//                "Tools and Equipment Handling",
//                "Time Management",
//                "Attention to Detail"
//            ]
//        }
//    ]
//
//
//    """.data(using: .utf8)!
//    /// ends with ]}]
//    do {
//        let profiles = try JSONDecoder().decode([TheMentorBrain].self, from: jsonData)
//        print(profiles)
//        return profiles
//    } catch {
//        print("Error decoding JSON: \(error)")
//        return []
//    }
//}
//// if we want to add images in to this we need to add in a let image: String
//// put in the "image": "imageName.jpg"
//// have the images in the assests folder
//// call the images in with Image(profile.image) .resizable() .scaledtofit etc etc over on the profile Detail View.
//// I may use a system image for now just to experiement with placement and sizing.
//
//
