//
//  Iterator.swift
//  DesignPatterns
//
//  Created by Валентина Евдокимова on 14.08.2022.
//

import Foundation

class Human {
    var name: String
    var lastName: String
    
    init(name: String, lastName: String) {
        self.name = name
        self.lastName = lastName
    }
}

protocol HumanIterator {
    var count: Int { get }
    func next() -> Human?
    func curentItem() -> Human?
    func isDone() -> Bool
}

protocol Aggregate {
    func getIterator() -> HumanIterator
    func getItem(index: Int) -> Human
}

final class HumanAggregate: Aggregate {
    
    private var list: [Human] = []
    
    var count: Int {
        return list.count
    }
    
    func add(human: Human) {
        list.append(human)
    }
    
    func pop() {
        if count > 0 {
            list.removeLast()
        }
    }
    
    func getItem(index: Int) -> Human {
        return list[index]
    }
    
    func getIterator() -> HumanIterator {
        return Iterator(list: self)
    }
        
}

final class Iterator: HumanIterator {
    
    private var list: HumanAggregate
    
    var index: Int = 0
    
    var count: Int {
        return list.count
    }
    
    init(list: HumanAggregate) {
        self.list = list
    }
    
    func next() -> Human? {
        
        defer {
             index = index + 1
        }
        
        return isDone() ? list.getItem(index: index) : nil
    }
    
    func curentItem() -> Human? {
        return list.getItem(index: index)
    }
    
    func isDone() -> Bool {
        return index < count
    }
    
}
