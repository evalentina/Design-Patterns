//
//  UsageStructural.swift
//  DesignPatterns
//
//  Created by Валентина Евдокимова on 08.08.2022.
//

import Foundation

// MARK: Decorator

let espresso = Espresso()
let capuccino = Milk(сoffee: espresso)
let capuccinoWithSyrup = Syrup(сoffee: capuccino)






