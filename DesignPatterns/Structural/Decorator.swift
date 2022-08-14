//
//  Decorator.swift
//  DesignPatterns
//
//  Created by Валентина Евдокимова on 08.08.2022.
//

import Foundation

protocol Coffee {
    func cost() -> Int
    func ingredients() -> String
}

class CoffeDecorator: Coffee {
    
    private var сoffee: Coffee
    
    init(сoffee: Coffee) {
        self.сoffee = сoffee
    }
    
    func cost() -> Int {
        return сoffee.cost()
    }
    
    func ingredients() -> String {
        return сoffee.ingredients()
    }
}

final class Espresso: Coffee {
    func cost() -> Int {
        return 100
    }
    
    func ingredients() -> String {
        return "Espresso 30 ml"
    }
}

final class Milk: CoffeDecorator {
    
    override func cost() -> Int {
        return super.cost() + 50
    }
    
    override func ingredients() -> String {
        return super.ingredients() + ", Milk"
    }
}

final class DoubleCoffee: CoffeDecorator {
    
    override func cost() -> Int {
        return super.cost() + 50
    }
    
    override func ingredients() -> String {
        return super.ingredients() + ", Espresso 30 ml"
    }
}

final class Syrup: CoffeDecorator {
    
    override func cost() -> Int {
        return super.cost() + 75
    }
    
    override func ingredients() -> String {
        return super.ingredients() + ", Syrup"
    }
}





