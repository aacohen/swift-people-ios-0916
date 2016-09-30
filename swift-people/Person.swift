//
//  Person.swift
//  swift-people
//
//  Created by Flatiron School on 9/29/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Person {
    let name: String
    var ageInYears: Int?
    var skills: Set<String> = []
    var qualifiedTutor: Bool { return skills.count >= 4 }
    init(name: String, ageInYears: Int?) {
        self.name = name
        self.ageInYears = ageInYears
    }
    
    convenience init(name: String) {
        self.init(name: name, ageInYears: nil)
        self.ageInYears = nil
    }
    init() {
        self.name = "John Doe"
    }
     //III.
    
    func celebrateBirthday () -> String {
        var ext: String = ""
        var age: Int = 0
        if ageInYears == nil {
          let birthdayName = self.name.uppercased()
            return "HAPPY BIRTHDAY, \(birthdayName)!!!"
          }
        else {
            if let ageInYears = self.ageInYears  {
                print("ageInYears:\(ageInYears)")
                age = ageInYears + 1
                print("age: \(age)")
                ext = age.ordinal().uppercased()
                let birthdayName = self.name.uppercased()
                self.ageInYears = age
                return ("HAPPY \(age)\(ext) BIRTHDAY, \(birthdayName)!!!")
            }
            
        }
       return ""
    }
    
    //IV. skills methods
    
    func learnSkillBash() {
    skills.insert("bash")
    }
    
    func learnSkillXcode() {
        skills.insert("Xcode")
    }
    
    func learnSkillObjectiveC () {
        skills.insert("Objective-C")
    }
    
    func learnSkillSwift() {
        skills.insert("Swift")
    }
    
    func learnSkillInterfaceBuilder() {
        skills.insert("Interface Builder")
    }
    
    
}
