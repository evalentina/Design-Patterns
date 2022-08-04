//
//  Prototype.swift
//  DesignPatterns
//
//  Created by Валентина Евдокимова on 04.08.2022.
//

import Foundation

class Person {
    
    let name : String
    var age = 18
    
    init(name: String) {
        self.name = name
    }
    
    func clone() -> Person {
        return Person(name: name)
    }
}


