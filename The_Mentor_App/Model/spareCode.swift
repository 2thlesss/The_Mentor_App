//
//  spareCode.swift
//  The_Mentor_App
//
//  Created by Thomas Jadie Reeves on 5/12/23.
//

import Foundation


//class SearchFieldData : ObservableObject {
//    @Published var jobField = ""
//    @Published var jobSkill1 = ""
//    @Published var jobSkill2 = ""
//    @Published var jobSkill3 = ""
//}
//
//
//struct SearchView: View {
//    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
//    @StateObject var searchFieldData = SearchFieldData()
//
//    var body: some View {
//        ZStack{
//
//
//
//            Color(.init(red: 0, green: 255, blue: 255, alpha:0.5)) //light blue
//                .edgesIgnoringSafeArea(.all)
//
//
//            VStack{
//                TitleTextController(title: "Search for a Mentor")
//                TextFieldController(text: $searchFieldData.jobField, placeholder: "Deired Job Field")
//                TextFieldController(text: $searchFieldData.jobSkill1, placeholder: "Skill")
//                TextFieldController(text: $searchFieldData.jobSkill2, placeholder: "Skill")
//                TextFieldController(text: $searchFieldData.jobSkill3, placeholder: "Skill")
//
//                Button("Search", action:{})
//            }
//
//
//        }
//
//        }
//
//   ///search results goes to the the scroll view to populate
//    ///
//    }
//


//{
//    "name": "Emily Johnson",
//    "headline": "Experienced Cybersecurity Project Manager | Ensuring Digital Safety & Risk Mitigation",
//    "summary": "Results-driven and highly skilled cybersecurity professional with a deep expertise in project management, risk assessment, and security strategy. Dedicated to ensuring regulatory compliance and mitigating potential risks through comprehensive security measures. Proven track record in incident response, conducting security audits, and performing vulnerability and penetration testing. Strong abilities in stakeholder management and team leadership, driving collaborative efforts to achieve cybersecurity objectives. Passionate about continuously enhancing security practices to safeguard critical assets and maintain the confidentiality, integrity, and availability of information systems",
//    "experience": [
//        {
//            "title": "Project Manager, Cybersecurity Division",
//            "company": "XYZ Corporation",
//            "dates": "2018 - Present",
//            "responsibilities": [
//                "Lead cross-functional teams in executing complex cybersecurity projects from initiation to completion.",
//                "Develop and implement comprehensive security strategies and policies..."
//            ]
//        },
//        {
//            "title": "Senior Security Analyst",
//            "company": "ABC Corporation",
//            "dates": "2015 - 2018",
//            "responsibilities": [
//                "Conducted security assessments, vulnerability scans, and penetration tests...",
//                "Assisted in the development and implementation of security policies..."
//            ]
//        }
//    ],
//    "education": {
//        "degree": "Bachelor of Science in Computer Science",
//        "university": "XYZ University",
//        "dates": "2011 - 2015"
//    },
//    "certifications": [
//        "Certified Information Systems Security Professional (CISSP)",
//        "Certified Ethical Hacker (CEH)",
//        "Project Management Professional (PMP)"
//    ],
//    "skills": [
//        "Project Management",
//        "Risk Assessment",
//        "Security Strategy",
//        "Regulatory Compliance",
//        "Incident Response",
//        "Security Audits",
//        "Vulnerability Assessment",
//        "Penetration Testing",
//        "Stakeholder Management",
//        "Team Leadership"
//    ]
//},
//{
//"name": "David Anderson",
//"headline": "Expert Data Scientist | Leveraging Analytics for Strategic Insights",
//"summary": "Highly skilled and results-oriented data scientist with a strong background in leveraging analytics to drive strategic insights and data-driven decision-making. Proficient in applying advanced statistical techniques and machine learning algorithms to extract valuable insights from complex datasets. Experienced in developing predictive models, optimizing algorithms, and creating data visualization dashboards. Passionate about using data to solve business challenges and drive innovation. Excellent communication and collaboration skills, adept at translating complex technical concepts into actionable insights for stakeholders.",
//"experience": [
//    {
//        "title": "Data Scientist",
//        "company": "XYZ Analytics",
//        "dates": "2016 - Present",
//        "responsibilities": [
//            "Analyze large datasets to identify trends, patterns, and insights for key business areas.",
//            "Develop and deploy predictive models and machine learning algorithms to support business objectives.",
//            "Collaborate with cross-functional teams to design and implement data-driven solutions."
//        ]
//    },
//    {
//        "title": "Data Analyst",
//        "company": "ABC Tech",
//        "dates": "2014 - 2016",
//        "responsibilities": [
//            "Cleaned, transformed, and validated data for analysis and reporting purposes.",
//            "Conducted statistical analysis to uncover correlations and insights in customer behavior.",
//            "Developed data visualization dashboards to present key performance indicators."
//        ]
//    }
//],
//"education": {
//    "degree": "Master of Science in Data Science",
//    "university": "University of Science and Technology",
//    "dates": "2012 - 2014"
//},
//"certifications": [
//    "Certified Data Scientist (CDS)",
//    "Machine Learning Engineer (MLE)",
//    "Data Visualization Professional (DVP)"
//],
//"skills": [
//    "Data Analysis",
//    "Machine Learning",
//    "Statistical Modeling",
//    "Predictive Analytics",
//    "Data Visualization",
//    "Python",
//    "R Programming",
//    "SQL",
//    "Big Data Technologies",
//    "Communication"
//]
//},
//{
//"name": "Emily Davis",
//"headline": "Experienced Finance Manager | Driving Financial Excellence & Strategic Decision-Making",
//"summary": "Highly accomplished finance professional with a strong background in managing financial operations and driving strategic decision-making. Proven expertise in financial analysis, risk assessment, and budgeting. Committed to ensuring financial stability and optimizing profitability for organizations. Adept at implementing sound financial strategies and fostering cross-functional collaboration. Passionate about leveraging financial data to drive informed business decisions and support long-term growth.",
//"experience": [
//{
//  "title": "Finance Manager",
//  "company": "ABC Corporation",
//  "dates": "2017 - Present",
//  "responsibilities": [
//    "Oversee financial operations, including budgeting, forecasting, and financial reporting, to support effective decision-making and achieve financial goals.",
//    "Develop and implement financial strategies to optimize profitability, reduce costs, and maximize operational efficiency.",
//    "Conduct thorough financial analysis to identify trends, risks, and opportunities, providing actionable recommendations to senior management.",
//    "Collaborate with cross-functional teams to align financial objectives with business strategies and drive successful outcomes."
//  ]
//},
//{
//  "title": "Financial Analyst",
//  "company": "XYZ Investments",
//  "dates": "2014 - 2017",
//  "responsibilities": [
//    "Performed in-depth financial analysis, including valuation modeling and risk assessment, to support investment decision-making.",
//    "Monitored market trends and conducted industry research to identify potential investment opportunities and risks.",
//    "Prepared financial reports, presentations, and investment memos for executive management and clients.",
//    "Assisted in the development of investment strategies and asset allocation recommendations."
//  ]
//}
//],
//"education": {
//"degree": "Master of Business Administration (MBA)",
//"university": "GHI Business School",
//"dates": "2012 - 2014"
//},
//"certifications": [
//"Chartered Financial Analyst (CFA)",
//"Certified Management Accountant (CMA)",
//"Financial Risk Manager (FRM)"
//],
//"skills": [
//"Financial Analysis",
//"Budgeting and Forecasting",
//"Risk Assessment",
//"Financial Reporting",
//"Strategic Planning",
//"Investment Management",
//"Data Analysis",
//"Business Valuation",
//"Cross-functional Collaboration",
//"Presentation Skills"
//]
//},
//
//{
//    "name": "Alex Thompson",
//    "headline": "Dedicated Cybersecurity Program Manager | Championing Robust Security Measures & Mitigating Risks",
//    "summary": "Highly skilled and results-driven cybersecurity professional with a proven track record in leading the successful delivery of large-scale cybersecurity programs. Expertise in risk management, incident response, and security training. Dedicated to championing robust security measures and mitigating risks through the implementation of comprehensive security frameworks. Strong abilities in stakeholder management and team leadership, driving collaborative efforts to achieve cybersecurity objectives. Passionate about continuously enhancing security practices to safeguard critical assets and maintain the confidentiality, integrity, and availability of information systems.",
//    "experience": [
//        {
//            "title": "Program Manager, Cybersecurity Division",
//            "company": "LMN Technologies",
//            "dates": "2019 - Present",
//            "responsibilities": [
//                "Orchestrate the successful delivery of large-scale cybersecurity programs, ensuring seamless collaboration among cross-functional teams.",
//                "Design and enforce robust security frameworks and best practices..."
//            ]
//        },
//        {
//            "title": "Security Consultant",
//            "company": "OPQ Solutions",
//            "dates": "2016 - 2019",
//            "responsibilities": [
//                "Orchestrate the successful delivery of large-scale cybersecurity programs, ensuring seamless collaboration among cross-functional teams. This responsibility involves overseeing and coordinating various cybersecurity initiatives and projects to achieve the desired outcomes, such as implementing robust security measures, addressing vulnerabilities, and safeguarding critical systems and data.",
//                "Design and enforce robust security frameworks and best practices. Alex is responsible for developing comprehensive security frameworks and establishing best practices that align with industry standards and regulations. This includes defining security policies, procedures, and guidelines to protect against potential threats and ensure regulatory compliance",
//            ]
//        }
//    ],
//    "education": {
//        "degree": "Bachelor of Science in Information Systems",
//        "university": "DEF University",
//        "dates": "2012 - 2016"
//    },
//    "certifications": [
//        "Certified Information Security Manager (CISM)",
//        "Certified Cloud Security Professional (CCSP)",
//        "Agile Certified Practitioner (ACP)"
//    ],
//    "skills": [
//        "Program Management",
//        "Risk Management",
//        "Cloud Security",
//        "Data Privacy",
//        "Incident Management",
//        "Security Training",
//        "Threat Intelligence",
//        "Secure Software Development",
//        "Vendor Management",
//        "Communication"
//    ]
//},
