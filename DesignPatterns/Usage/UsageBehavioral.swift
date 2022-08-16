//
//  UsageBehavioral.swift
//  DesignPatterns
//
//  Created by Валентина Евдокимова on 14.08.2022.
//

import Foundation

// MARK: Command
let door = Door(doorName: "FirstDoor")
//door.open()
//door.close()


// MARK: Iterator
let human = HumanAggregate()

//human.add(Human(name: "Eva", lastName: "Semenova"))
//human.add(Human(name: "Anna", lastName: "Ivanova"))
//human.add(Human(name: "Andrey", lastName: "Grigoriev"))

let makeIterator = human.getIterator()

// MARK: Iterator
var mathSort = Math(sorted: BubbleSort())
//mathSort.sort([1,2,3])
//mathSort = Math(MergeSort())
//mathSort.sort([4,5,6,7,8])




