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



