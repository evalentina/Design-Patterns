//
//  Usage.swift
//  DesignPatterns
//
//  Created by Валентина Евдокимова on 04.08.2022.
//

import Foundation

// MARK: Singleton
let data = Data.shared


//MARK: Prototype
let prototype = Person(name: "Student")

var student = prototype.clone()
//student.age = 20

var retiree = prototype.clone()
//retiree.age = 65








