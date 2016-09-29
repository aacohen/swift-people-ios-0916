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
    var skills: [String] = []
    var qualifiedTutor: Bool { return false }
    
    init(name: String, ageInYears: Int?) {
        self.name = name
        self.ageInYears = ageInYears
    }
    
    convenience init(name: String, ageinYears: Int?) {
        self.init(name: name, ageInYears: nil)
        self.ageInYears = nil
    }
    init() {
        self.name = "John Doe"
    }
    
    
}
